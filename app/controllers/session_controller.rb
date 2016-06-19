class SessionController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    @user = User.find_by_user_name(params[:user_name])
    if @user and @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to home_url
    else
      redirect_to home_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_url
  end
end
