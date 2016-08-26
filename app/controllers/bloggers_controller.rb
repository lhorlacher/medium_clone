class BloggersController < ApplicationController
  def show
    @blogger = User.find(params[:id])
    @blogs = @blogger.blogs
  end
end
