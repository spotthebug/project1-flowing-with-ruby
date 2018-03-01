class UsersController < ApplicationController
  def index
    
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
      flash[:notice] = "You successfully joined Flowing With Ruby"
    else
      flash[:error] = "There was problem, please try sign up again"
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
