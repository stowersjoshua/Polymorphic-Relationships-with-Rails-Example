class TextPostsController < ApplicationController
  def new
    @text_post = TextPost.new
  end

  def create
    @text_post = TextPost.new(text_post_params)
    @text_post.save
    #head :ok
    render action: "show"
  end

  def show

  end

  def index

  end


  private
    def text_post_params
      params.require(:text_post).permit(:title, :user, :message)
    end

end
