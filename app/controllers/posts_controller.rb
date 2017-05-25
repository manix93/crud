class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def index
    @posts = Post.all
  end

  def show
  end
end
