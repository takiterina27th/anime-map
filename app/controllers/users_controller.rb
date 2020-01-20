class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).per(16).includes(:user)
  end

  def like
    @user = current_user
    @posts = @user.liked_posts.page(params[:page]).per(24).includes(:user)
  end
end
