class Backend::SessionController < Backend::ApplicationController
  def sign_in
    if params.key?(:email) || params.key?(:password)
      admin = Admin.find_by email: params[:email]
      if admin.present? && admin.authenticate(params[:password])
        session[:id] = admin.id
        redirect_to backend_top_path, notice: 'login'
      end
    end
  end

  def sign_out
    session[:id] = nil
    redirect_to root_path, notice: 'ログアウトしました'
  end
end
