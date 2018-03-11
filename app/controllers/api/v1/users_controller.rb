module Api::V1
  class UsersController < ApplicationController

    skip_before_action :authorize_request, only: :create

    def index
      @users = User.all
      json_response(@users)
    end

    def show
      @user = current_user
      json_response(@user)
    end

    # POST /signup
    # return authenticated token upon signup
    def create
      user = User.create!(user_params)
      auth_token = AuthenticateUser.new(user.email, user.password).call
      response = { message: Message.account_created, auth_token: auth_token }
      json_response(response, :created)
    end

    private

    def user_params
      params.require(:user).permit(
        :email,
        :password,
        :password_confirmation
      )
    end
  end
end
