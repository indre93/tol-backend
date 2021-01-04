class DiscussionsController < ApplicationController

  def index
    @discussions = Discussion.all
    render json: @discussions
  end

  def create
    @discussion = Discussion.new(discussion_params)
    if @discussion.save
      render json: @discussion
    else
      render jason: { errors: @discussion.errors }
    end
  end

  def show
    @discussion = Discussion.find(params[:id])
    render jason: @discussion
  end

  def destroy
    @discussion = Discussion.find(params[:id])
    @discussion.destroy
  end

  private

  def discussion_params
    params.require(discussion).permit(:topic)
  end

end
