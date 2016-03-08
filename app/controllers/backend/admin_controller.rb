class Backend::AdminController < Backend::ApplicationController
  before_action :header_vocalists
  before_action :check_login

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save!
      redirect_to backend_admin_path @admin.id
    else
      render :new
    end
  end

  def index
    @admins = Admin.all
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def update
    @admin = Admin.find(params[:id])
    if @admin.update!(admin_params)
      redirect_to backend_admin_path @admin.id
    else
      render :new
    end
  end

  def destloy
    @admin = Admin.find(params[:id])
  end

  private

  def admin_params
    params.require(:admin).permit(
      :name,
      :email,
      :password,
      :twitter_id
    )
  end
end
