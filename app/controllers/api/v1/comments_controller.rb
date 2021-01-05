class Api::V1::CommentsController < ApplicationController
  before_action :set_discussion

  def index
    @comments = @discussion.comments
    render json: @comments
  end

  def create
    @comment = @discussion.comments.new(comment_params)
    if @comment.save
      render json: @discussion
    else
      render json: { errors: @comment.errors }
    end
  end

  def show
    @comment = @discussion.comments.find_by(id: params[:id])
    render json: @comment
  end

  def destroy
    @comment = @discussion.comments.find_by(id: params[:id])
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:username, :content, :discussion_id)
  end

  def set_discussion
    @discussion = Discussion.find(params[:discussion_id])
  end

end
