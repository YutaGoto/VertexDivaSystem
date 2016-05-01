class Backend::IllustrationsController < Backend::ApplicationController
  before_action :check_login
  before_action :set_illustration, only: [:show, :edit, :update, :illustration]

  def index
    @illustrations = Illustration.all
  end

  def new
    @illustration = Illustration.new
    @illustrators = Illustrator.all
  end

  def create
    @illustration = Illustration.new(illustration_params)
    @illustration.illustration = params[:illustration][:illustration].read
    @illustration.content_type = params[:illustration][:illustration].content_type
    if @illustration.save!
      redirect_to backend_illustration_path @illustration.id
    else
      render :new
    end
  end

  def show
    @illustration = Illustration.find_by(id: params[:id])
  end

  def edit
    @illustration = Illustration.find_by(id: params[:id])
    @illustrators = Illustrator.all
  end

  def update
    @illustration = Illustration.find_by(id: params[:id])
    @illustration.attributes = illustration_params
    @illustration.illustration = params[:illustration][:illustration].read
    @illustration.content_type = params[:illustration][:illustration].content_type
    if @illustration.save
      redirect_to backend_illustration_path @illustration.id
    else
      render :edit
    end
  end

  def destroy
    @illustration = Illustration.find_by(id: params[:id])
  end

  def illustration
    send_data(@illustration.illustration, type: @illustration.content_type, disposition: :inline)
  end

  def set_illustration
    @illustration = Illustration.find_by(id: params[:id])
  end

  private

  def illustration_params
    params.require(:illustration).permit(
      :illustration,
      :illustrator_id,
      :song_id
    )
  end
end
