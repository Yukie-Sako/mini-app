class BlogsController < ApplicationController

before_action :move_to_index, except: :index

  def index
    @blogs = Blog.all
  end

  def new
  end

  def create
    Blog.create(title: tweet_params[:title], text: tweet_params[:text], user_id: current_user.id)
  end

  private
  def tweet_params
    params.permit(:title, :text, :image)
  end


end
