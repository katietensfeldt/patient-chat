class UsersController < ApplicationController
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
      render json: user.as_json, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

end
