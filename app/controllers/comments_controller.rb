class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.html { redirect_to post_path(params[:post_id])  }
      format.json
    end
  end

  # def create
  #   @comment = Comment.new(comment_params)
  #   @comment.user_id = current_user.id
  #   if @comment.save
  #     redirect_back(fallback_location: root_path)
  #   else
  #     redirect_back(fallback_location: root_path)
  #   end
  # end

  private
  def comment_params
    params.require(:comment).permit(
      :text
    )
    .merge(post_id: params[:post_id], user_id: current_user.id)
  end
end
