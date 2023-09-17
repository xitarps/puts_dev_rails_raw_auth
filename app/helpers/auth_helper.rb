module AuthHelper
  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def signed_in?
    !!current_user
  end

  def authenticate_user!
    unless signed_in?
      redirect_to signin_path
    end
  end

  def redirect_if_already_signed_in
    redirect_to root_path if signed_in?
  end
end
