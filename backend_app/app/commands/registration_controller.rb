class RegistrationController < ApplicationController
    skip_before_action :authenticate_request
   
    def register
        user = User.create!(email: params[:email] , password: params[:password] , password_confirmation: params[:password])

        render json: {success: "Yeah, baby!", user: user}
    #   command = AuthenticateUser.call(params[:email], params[:password])
   
    #   if command.success?
    #     render json: { auth_token: command.result }
    #   else
    #     render json: { error: command.errors }, status: :unauthorized
    #   end
    end
end