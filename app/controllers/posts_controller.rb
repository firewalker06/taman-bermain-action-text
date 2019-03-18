class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    post = Post.create! params.require(:post).permit(:message)
    redirect_to post
  end

  def show
    @post = Post.find(params[:id])
  end
end
