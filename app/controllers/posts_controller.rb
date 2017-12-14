class PostsController < ApplicationController
  before_action :load_post, except: [:index, :new]

  def index
  	@posts = Post.all
  end

  def show
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new params.require(:post).permit(:title, :content)
  	if @post.save
  		redirect_to posts_path
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
    if @post.update params.require(:post).permit(:title, :content)
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def load_post
    @post = Post.find params[:id]
  end
end
