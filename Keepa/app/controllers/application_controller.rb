# bla bla bla
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  private

  def current_user
    id = session[:user_id]
    @current_user ||= User.find(id) if id
  end
end
