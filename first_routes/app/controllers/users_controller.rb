class UsersController < ApplicationController

  def index
    users = User.all 

    render json: users 
  end

  def create
    user = User.new(user_params)
    # debugger
    if user.save 
      render json: params
    else 
      render json: user.errors.full_messages, status: 422
    end

  end

  def show
    user = User.find(params[:id])

    render json: user
  end

  def update
    user = User.find(params[:id])

    if user.update_attributes(user_params)
      render json: user 
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    render json: user 
  end

   private

  def user_params
    params.require(:user).permit(:username) #=> {username: 'Erin'}
  end
end

