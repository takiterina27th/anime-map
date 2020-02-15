class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = Like.create(user_id: current_user.id, post_id: @post.id)
    # redirect_back(fallback_location: post_path(@post.id))
  end

  def destroy
    @post = Post.find(params[:post_id])
    @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    @like.destroy
    # redirect_back(fallback_location: post_path(params[:post_id]))
  end
end
