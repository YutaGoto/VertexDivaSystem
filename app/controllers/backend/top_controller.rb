class Backend::TopController < Backend::ApplicationController
  before_action :header_vocalists
  before_action :check_login

  def index
  end
end
