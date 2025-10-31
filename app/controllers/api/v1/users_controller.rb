class Api::V1::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]       
  def index
    users = User.all
    render json: users 
  end

  def show
    user = User.find(params[:id])
    render json: user 
  end

  def create
    @usr = User.new(user_params)
    if @usr.save
        render json:{ messege: "user created", user: @usr}, status: :created
    else
        render json:{ errors: @usr.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @usr = User.find(params[:id])
    if @usr.update 
        render json:{messege:"user updated", user: @usr },status: :updated
    else
        render json:{errors: @usr.errors.full_messages },status: :unprocessable_entity
    end
  end
  def destroy
  end
  
  def user_params
    params.require(:users).permit(:name,:mail,:password,:age,:bio)
  end
end
