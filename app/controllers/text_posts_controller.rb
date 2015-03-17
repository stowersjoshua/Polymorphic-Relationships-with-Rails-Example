class TextPostsController < ApplicationController
  def new
    @text_post = TextPost.new
  end

  def create
    @text_post = TextPost.new(text_post_params)
    @text_post.user_id = current_user.id
    @text_post.save
    render action: "show"
  end

  def show

  end

  def index

  end


  private
    def text_post_params
      params.require(:text_post).permit(:title, :user, :message, :user_id)
    end

end
