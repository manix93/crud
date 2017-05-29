class PostsController < ApplicationController
  def new
    @post = Post.new(author: session[:author], published: true)
  end

  def create
    @post = Post.new(post_params)
    @post.save
    session[:author] = @post.author
    flash[:notice] = "Post został dodany pomyślnie"
    redirect_to posts_path
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    flash[:notice] = "Post został edytowany pomyślnie"
    redirect_to posts_path
  end

  def destroy
  end

  def edit
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :author, :body, :published)
  end
end
