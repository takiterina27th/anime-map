class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :display, :search, :show]

  def index
  end

  def display
  end

  def search
  end

  def new
    @post = Post.new
  end

  def create
  end

  def show
  end

  def mypage
  end
end
