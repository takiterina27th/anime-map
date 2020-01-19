class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :display, :search, :show]

  def index
    @posts = Post.order("RAND()").limit(8).includes(:user)
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
      redirect_to :root, notice: "投稿しました"
    else
      flash.now[:alert] = "投稿に失敗しました"
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
        redirect_to post_path(@post), notice: "編集しました"
      else
        flash.now[:alert] = "編集に失敗しました"
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
      redirect_to :root, notice: "投稿を削除しました"
    else
      flash.now[:alert] = "削除に失敗しました"
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
