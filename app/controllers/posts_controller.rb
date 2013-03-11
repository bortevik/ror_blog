class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new()
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:success] = 'New post created!'
      redirect_to post_url(@post)
    else
      render 'new'
    end
  end
end
