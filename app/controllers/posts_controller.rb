class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params.fetch(:id))
  end

  def single_post
    @post = Post.find(params[:id])
    respond_to do |format|
      format.js
    end
  end
end
