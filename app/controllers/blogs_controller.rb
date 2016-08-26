class BlogsController < ApplicationController
  def index
    @blogs = @user.blogs
  end

  def show
    @blogger = User.find(params[:blogger_id])

    @blog = @blogger.blog

  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    if @blog.save
      flash[:success] = "Your Blog has been created"
      redirect_to blogger_posts_path(current_user)
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
    params.require(:blog).permit(:title, :body, :author, :user_id)
  end
end
