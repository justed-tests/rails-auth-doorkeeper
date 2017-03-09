# la la la
class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:success] = 'Welcome back!'
      redirect_to root_path
    else
      flash[:warning] = 'You are wrong'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:success] = 'See you soon!'
    redirect_to root_path
  end
end
