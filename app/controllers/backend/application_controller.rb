class Backend::ApplicationController < ApplicationController
  layout 'backend/application'

  def header_vocalists
    @vocalists = Vocalist.all
  end

  def check_login
    admin = Admin.find_by id: session[:id]
    redirect_to backend_sign_in_path, norice: 'ログインしてください' if admin.nil?
  end
end
