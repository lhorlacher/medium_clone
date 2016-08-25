class BlogsController < ApplicationController
  def index
  end

  def show
    @blog = @current_user.blog
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:success] = "Your Blog has been created"
      redirect_to blogs_path
    else
      flash[:error] = "Error, please try again"
      render :new
    end
  end

  def edit
    @blog = @current_user.blog
  end

  def update
    @blog = @current_user.blog
    if @blog.update
      flash[:success] = "Your Blog has been edited"
      redirect_to blog_path(@blog)
    else
      flash[:error] = "Error, please try again"
      render :edit
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body, :author)
  end
end
