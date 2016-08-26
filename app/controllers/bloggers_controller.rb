class BloggersController < ApplicationController
  def show
    @blogger = User.find(params[:id])
    @blogs = @blogger.blogs
    @blogs = Blog.all.order('created_at').paginate(page: params[:page], per_page: 2)
  end
end
