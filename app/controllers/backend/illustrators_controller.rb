class Backend::IllustratorsController < Backend::ApplicationController
  before_action :check_login

  def index
    @illustrators = Illustrator.all
  end

  def new
    @illustrator = Illustrator.new
  end

  def create
    @illustrator = Illustrator.new(illustrator_params)
    if @illustrator.save!
      redirect_to backend_illustrator_path @illustrator.id
    else
      render :new
    end
  end

  def show
    @illustrator = Illustrator.find_by(id: params[:id])
  end

  def edit
    @illustrator = Illustrator.find_by(id: params[:id])
  end

  def update
    @illustrator = Illustrator.find_by(id: params[:id])
    if @illustrator.update_attributes(illustrator_params)
      redirect_to backend_illustrator_path @illustrator.id
    else
      render :edit
    end
  end

  def destroy
    @illustrator = Illustrator.find_by(id: params[:id])
  end

  private

  def illustrator_params
    params.require(:illustrator).permit(
      :name
    )
  end
end
