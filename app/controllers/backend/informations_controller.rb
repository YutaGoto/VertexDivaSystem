class Backend::InformationsController < Backend::ApplicationController
  before_action :check_login

  def index
    @informations = Information.all
  end

  def show
    @information = Information.find_by(id: params[:id])
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    if @information.save!
      redirect_to backend_information_path @information.id
    else
      render :new
    end
  end

  def edit
    @information = Information.find_by(id: params[:id])
  end

  def update
    @information = Information.find(params[:id])
    if @information.update!(information_params)
      redirect_to backend_information_path @information.id
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def information_params
    params.require(:information).permit(
      :title,
      :body,
      :publish_date,
      :draft
    )
  end
end
