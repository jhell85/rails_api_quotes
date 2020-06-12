class UsersController < ApplicationController
  skip_before_action :authenticate_request

  def create
    @user = User.create(user_params)
    json_response(@user)
  end


  private
    def user_params
      params.permit(:email, :password, :password_confirmation)
    end
end