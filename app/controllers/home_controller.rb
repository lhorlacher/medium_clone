class HomeController < ApplicationController
	skip_before_action :authenticate_user!
	
  def index
  	@blogs = Blog.all.order('created_at')
  end
end
