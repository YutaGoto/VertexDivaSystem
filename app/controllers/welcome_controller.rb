class WelcomeController < ApplicationController
  def index
    @informations = Information.where(draft: false)
  end

  def about
  end
end
