class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @text_posts = TextPost.where(user: @user.id)
    @image_posts = ImagePost.where(user: @user.id)
  end

end
