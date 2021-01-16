class Api::V1::DiscussionsController < ApplicationController

  def index
    @discussions = Discussion.all
    render json: @discussions
  end

  def create
    @discussion = Discussion.new(discussion_params)
    if @discussion.save
      render json: @discussion
    else
      render json: { errors: @discussion.errors }
    end
  end

  def show
    @discussion = Discussion.find(params[:id])
    render json: @discussion
  end

  private

  def discussion_params
    params.require(:discussion).permit(:topic)
  end

end
