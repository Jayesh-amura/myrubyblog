class PostsController < ApplicationController

  def index
    #@content_first = "This is the first sample text"
    #@content_second = "This is the second sample text"
    @posts = Post.all #from database model
  end


  def show
    #grab id from url
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @category = Category.all
  end

  def create

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update

  end

  def destroy

  end
end
