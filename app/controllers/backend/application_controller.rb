class Backend::ApplicationController < ApplicationController
  layout 'backend/application'

  def header_vocalists
    @vocalists = Vocalist.all
  end

  def check_login
    admin = Admin.find_by id: session[:id]
    if admin.nil?
      redirect_to backend_sign_in_path, norice: 'ログインしてください'
    end
  end
end
