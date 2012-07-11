class PostsController < ApplicationController

  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new 
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to @post, notice: "Updated!"
    else
      render :edit
    end
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post, notice: "Created!"
    else
      render :new
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path, notice: "Destroyed!"
    else
      redirect_to posts_path, error: "sorry, could not destroy: #{@post.errors.full_messages.join(", ")}"
    end
  end

end
