class VisitorsController < ApplicationController
  def index
    @users = User.all
    @text_posts = TextPost.all
  end
end
