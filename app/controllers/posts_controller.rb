class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :display, :search, :show]

  def index
  end

  def login
  end

  def regstration
  end

  def display
  end

  def search
  end

  def new
  end

  def show
  end

  def mypage
  end
end
