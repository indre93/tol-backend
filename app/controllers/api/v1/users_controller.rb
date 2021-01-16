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
end
