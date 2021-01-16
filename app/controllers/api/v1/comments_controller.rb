class Api::V1::CommentsController < ApplicationController
  before_action :set_user

  def index
    @comments = @user.comments
    render json: @comments
  end

  def create
    @comment = @user.comments.new(comment_params)
    if @comment.save
      render json: @discussion
    else
      render json: { errors: @comment.errors }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :discussion_id)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end
