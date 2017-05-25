class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
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
