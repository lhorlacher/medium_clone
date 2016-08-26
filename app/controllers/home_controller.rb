class HomeController < ApplicationController
	skip_before_action :authenticate_user!
	
  def index
  	@blogs = Blog.all.order('created_at').paginate(page: params[:page], per_page: 2)
  end
end
