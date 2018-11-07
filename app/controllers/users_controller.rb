class UsersController < ApplicationController
  def show
    @name = current_user.name
    @blogs = current_user.blogs.page(params[:page]).per(5).order("id DESC")
  end
end
