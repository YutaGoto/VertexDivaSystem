class Backend::SessionController < Backend::ApplicationController
  def sign_in
    redirect_to backend_top_path if session[:id]
    if params.key?(:email) || params.key?(:password)
      admin = Admin.find_by email: params[:email]
      if admin && admin.authenticate(params[:password])
        session[:id] = admin.id
        redirect_to backend_top_path, notice: 'login'
      else
        session[:id] = nil
        redirect_to backend_sign_in_path, notice: 'wrong'
      end
    end
  end

  def sign_out
    session[:id] = nil
    redirect_to root_path, notice: 'ログアウトしました'
  end
end
