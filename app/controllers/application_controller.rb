class ApplicationController < ActionController::API
    before_action :authenticate

    def authenticate
        auth_header = request.headers['Authorization']

        if !auth_header 
            render json: { message: 'No token' }, status: :forbidden
        else
            token = auth_header.split(' ').last
            secret = 'ill never tell. anyone.'
            begin
                decoded_token = JWT.decode(token, secret)
                payload = decoded_token.first
                business_id = payload['business_id']
                @business = Business.find(business_id)
            rescue
                render json: { message: 'Invalid JWT' }, status: :forbidden
            end
        end
    end

end