class Backend::ApplicationController < ApplicationController
  layout 'backend/application'

  def header_vocalists
    @vocalists = Vocalist.all
  end
end
