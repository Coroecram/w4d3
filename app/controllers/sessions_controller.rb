class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(
                 params[:user][:username],
                 params[:user][:password]
                 )

    if @user
      @user.reset_session_token!
      redirect_to cats_url
    else
      @user = User.new(username: params[:user][:username])
      render :new
    end
  end

end
