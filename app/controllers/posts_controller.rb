class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new(title: params[:title], body: params[:body])
    @post.save
    redirect_to "/posts"
  end

  def show
    @post = Post.find(params[:id])
  end

end