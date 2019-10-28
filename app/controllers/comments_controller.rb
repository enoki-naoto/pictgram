class CommentsController < ApplicationController
  def new
    @comments = Comment.new
    @comments.topic_id = params[:topic_id]
    @comments.user_id = current_user.id
  end
  
  def create
    @comments = current_user.comments.new(comment_params)
    
    if @comments.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = '投稿に失敗しました'
      render:new
    end
    
  end
  
  private
  def comment_params
    params.require(:comment).permit(:description, :user_id, :topic_id)
  end
  
  
end
