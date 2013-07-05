module SessionsHelper
  def current_user
    @current_user ||= User.find_by(remember_token: cookies[:remember_token])
  end
end
