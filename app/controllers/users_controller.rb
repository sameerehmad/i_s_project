class UsersController < ApplicationController
  # Index action to show all users or filtered by search query
  def index
    if params[:query].present?
      # Generate SQL query based on the search term
      @users = User.where("name LIKE ?", "%#{params[:query]}%")
    else
      # If no query parameter is passed, show all users
      @users = User.all
    end
  end

  # New action to show the form for creating a new user
  def new
    @user = User.new
  end

  # Create action to create a new user
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "User created successfully"
    else
      render :new
    end
  end
  
  def search
  end

  private

  # Strong parameters for user creation
  def user_params
    params.require(:user).permit(:name, :email, :cnic)
  end
end