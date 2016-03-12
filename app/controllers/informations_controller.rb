class InformationsController < ApplicationController
  def index
    @informations = Information.where(draft: false)
  end

  def show
    @information = Information.find_by(id: params[:id])
  end
end
