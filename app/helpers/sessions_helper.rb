module SessionsHelper
  def sign_in(user)
    session[:user] = user
  end

  def sign_out
    session[:user] = nil
  end
end
