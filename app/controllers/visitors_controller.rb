class VisitorsController < ApplicationController
  def index
    @users = User.all
    @image_posts = ImagePost.all
  end

  def text
    @users = User.all
    @text_posts = TextPost.all
  end

end
