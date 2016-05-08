class Backend::ComposersController < Backend::ApplicationController
  before_action :check_login

  def new
    @composer = Composer.new
  end

  def create
    @composer = Composer.new(composer_params)
    if @composer.save!
      redirect_to backend_composer_path @composer.id
    else
      render :new
    end
  end

  def index
    @composers = Composer.all
  end

  def show
    @composer = Composer.find(params[:id])
    @songs = Song.where(composer_id: @composer.id)
  end

  def edit
    @composer = Composer.find(params[:id])
  end

  def update
    @composer = Composer.find(params[:id])
    if @composer.update_attributes(composer_params)
      redirect_to backend_composer_path @composer.id
    else
      render :edit
    end
  end

  def destloy
    @composer = Composer.find(params[:id])
  end

  private

  def composer_params
    params.require(:composer).permit(
      :name
    )
  end
end
