class PostsController < ApplicationController

  def index
    #@content_first = "This is the first sample text"
    #@content_second = "This is the second sample text"
    @posts = Post.all #from database model
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def show

  end

  def destroy

  end
end
