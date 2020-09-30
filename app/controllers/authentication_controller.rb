class AuthenticationController < ApplicationController

    skip_before_action :authenticate, only: [:login]

    def login
        @business = Business.find_by(username: params[:username])

        if !@business
            render json: { message: 'That user does not exist', status: :unauthorized }
        else

            if !@business.authenticate(params[:password]) 
                render json: { message: 'Bad password' }, status: :unauthorized
            else
                payload = { business_id: @business.id }
                secret = 'ill never tell. anyone.'
                token = JWT.encode(payload, secret)

                render json: { token: token }, status: :ok
            end
        end
    end 

end

#line 10 is bcrypt specific
# secret = Rails.application.secrets.secret_key_base
# financials: @business.financials

