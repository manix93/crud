class PostsController < ApplicationController
  def new
  end

  def edit
  end

  def index
    @posts = Post.all
  end

  def show
  end
end