class BloggersController < ApplicationController
  def show
    @blogger = User.find(params[:id])
  end
end
