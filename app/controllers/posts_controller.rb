class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :display, :search, :show]

  def index
  end

  def display
    @posts = Post.order('id DESC').page(params[:page]).per(16).includes(:user)
  end

  def search
    @posts = Post.order('id DESC').limit(24).includes(:user)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :root
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user)
    @comment = @post.comments.build
    @like = Like.new
  end

  def mypage
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.user_id == current_user.id
      if @post.update(post_params)
        redirect_to post_path(@post)
      else
        render "edit"
      end
    else
      redirect_to :root
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.user_id == current_user.id
      @post.destroy
      redirect_to :root
    else
      redirect_to :root
    end
  end

  private

  def post_params
      params.require(:post).permit(
        :name,
        :description,
        :image,
        :anime_title,
        :place,
        :user_id
      )
      .merge(user_id: current_user.id)
  end
end
