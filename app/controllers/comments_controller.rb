class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.html { redirect_to post_path(params[:post_id])  }
      format.json
    end
  end

  private
  def comment_params
    params.require(:comment).permit(
      :text
    )
    .merge(post_id: params[:post_id], user_id: current_user.id)
  end
end
