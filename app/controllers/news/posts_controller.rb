require_dependency "news/application_controller"

module News
  class PostsController < ApplicationController

    before_action :set_post, only: [:show, :edit, :update, :destroy]

    respond_to :html

    def index
      @posts = Post.all
      respond_with(@posts)
    end

    def new
      @post = Post.new
      respond_with(@post)
    end

    def create
      @post = Post.new(post_params)
      @post.save
      redirect_to News.index_path
    end

    def edit
    end

    def update
      @post.update(post_params)
      redirect_to News.index_path
    end

    def destroy
      @post.destroy
      respond_with(@post)
    end

    private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:user_id, :title, :comment, :created_at, :update_at)
    end

  end
end
