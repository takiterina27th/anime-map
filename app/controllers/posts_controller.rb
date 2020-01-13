class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :display, :search, :show]

  def index
    @posts = Post.all
  end

  def display
  end

  def search
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
  end

  def mypage
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
