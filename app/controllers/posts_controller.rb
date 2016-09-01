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
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, :notice => "Your Post has been saved"
    else
      render "new"
    end
 
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update

  end

  def destroy

  end
  private

    def post_params
      params.require(:post).permit(:title,:body,:category_id)
    end
end
