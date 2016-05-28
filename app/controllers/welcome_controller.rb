class WelcomeController < ApplicationController
  def index
    @informations = Information.where(draft: false)
  end

  def about
  end

  def user_illustration
    illustration = Ilustration.find_by id: params[:illustration_id]
    if illustration.present?
      send_data(illustration.illustration, type: illustration.content_type, disposition: :inline)
    end
  end
end
