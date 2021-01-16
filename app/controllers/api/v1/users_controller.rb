class Api::V1::UsersController < ApplicationController
  before_action :set_discussion

  def index
    @users = @discussion.users
    render json: @users
  end

  def create
    @user = @discussion.users.new(user_params)
    if @user.save
      render json: @discussion
    else
      render json: { errors: @user.errors }
    end
  end

   def show
      @user = @discussion.users.find_by(id: params[:id])
      render json: @user
   end

  private

  def user_params
    params.require(:user).permit(:username, :discussion_id)
  end

  def set_discussion
    @discussion = Discussion.find(params[:discussion_id])
  end

end
