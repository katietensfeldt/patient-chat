class UsersController < ApplicationController
  def index
    users = User.where("type_of = 1")
    render json: users
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      type_of: params[:type_of],
    )
    if user.save
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    if current_user == user
      user.first_name = params[:first_name] || user.first_name  
      user.last_name = params[:last_name] || user.last_name  
      user.email = params[:email] || user.email  
      user.type_of = params[:type_of] || user.type_of
      if user.save
        render json: user
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    user = User.find(params[:id])
    if current_user == user
      user.delete
      render json: {message: "User successfully deleted"}
    else
      render json: {}, status: :unauthorized
    end
  end

end
