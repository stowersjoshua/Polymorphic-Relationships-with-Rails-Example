class ImagePostsController < ApplicationController
  def new
    @image_post = ImagePost.new
  end

  def create
    @image_post = ImagePost.new(text_image_params)
    @image_post.user_id = current_user.id
    @image_post.save
    render action: "show"
  end

  def show

  end

  def index

  end


  private
  def text_image_params
    params.require(:image_post).permit(:title, :user, :user_id, :image)
  end
end
