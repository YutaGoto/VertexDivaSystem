class Backend::TopController < Backend::ApplicationController
  before_action :check_login

  def index
  end
end
