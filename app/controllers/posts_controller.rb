class PostsController < ApplicationController
  def new
    @post = Post.new(author: session[:author])
  end

  def create
    @post = Post.new(post_params)
    @post.save
    session[:author] = @post.author
    flash[:notice] = "Post został dodany pomyślnie"
    redirect_to posts_path
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

  private

  def post_params
    params.require(:post).permit(:title, :author, :body, :published)
  end
end
