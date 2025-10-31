class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  def usercreation99
    @user = User.find(params[:id])
  end
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @comments = @user.comments
  end

  def create
    @usr = User.new(user_paramstwo)
    if @usr.save
      redirect_to @usr, notice:"user created successfully "
    else
      redirect_to new_user_path, notice:"user not created successfully "
    end
  end

  def new
    @usr = User.new
  end

  def edit 
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
      else
      flash.now[:notice] = "Not successfully edited"
      render :edit
    end
  end
  private

  def user_paramstwo
    # params.require(:user).permit(:name,:age,:mail,:bio)
    params.require(:user).permit(:name,:age,:mail,:bio,:gender,:password,:avatar)
  end
  private 
  def user_params
    params.require(:user).permit(:name, :age, :bio, :mail,:gender,:avatar)
  end
end
