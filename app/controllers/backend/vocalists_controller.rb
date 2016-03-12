class Backend::VocalistsController < Backend::ApplicationController
  before_action :check_login

  def new
    @vocalist = Vocalist.new
  end

  def create
    @vocalist = Vocalist.new(vocalist_params)
    if @vocalist.save
      redirect_to backend_vocalist_path @vocalist.id
    else
      render :new
    end
  end

  def index
    @vocalists = Vocalist.all
  end

  def show
    @vocalist = Vocalist.find(params[:id])
    @songs = Song.by_vocalist(@vocalist.id)
  end

  def edit
    @vocalist = Vocalist.find(params[:id])
  end

  def update
    @vocalist = Vocalist.find(params[:id])
    if @vocalist.update(vocalist_params)
      redirect_to backend_vocalist_path @vocalist.id
    else
      render :new
    end
  end

  def destloy
    @vocalist = Vocalist.find(params[:id])
  end

  private

  def vocalist_params
    params.require(:vocalist).permit(
      :name
    )
  end
end
