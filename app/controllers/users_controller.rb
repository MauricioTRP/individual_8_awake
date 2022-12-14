class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Object successfully created"
      redirect_to @user
    else
      flash[:error] = "Something went wrong"
      render 'new', status: :unprocessable_entity
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :description)
  end
  
end
