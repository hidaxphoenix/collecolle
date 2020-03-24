class CommentsController < ApplicationController

  def create
    # binding.pry
    comment= Comment.create(comment_params)
    redirect_to "/posts/#{comment.post.id}"
    # @comment = Comment.new(comment_params)
    # if @comment.save!
    #   redirect_to root_path
    # else
    #   redirect_to new_post_path
    # end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
