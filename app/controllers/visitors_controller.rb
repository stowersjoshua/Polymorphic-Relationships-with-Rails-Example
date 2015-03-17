class VisitorsController < ApplicationController
  def index
    @users = User.all
    #@posts = x
  end
end
