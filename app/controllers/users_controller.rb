class UsersController < ApplicationController
  def index
    users
  end

  def show
    @user = UserSerializer.new(user)
  end

  private

  def users
    @users ||= User.all
  end

  def user
    User.find(params[:id])
  end
end
