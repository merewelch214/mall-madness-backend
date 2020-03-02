class AuthController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(password: params[:password])
            render json: user
        else 
            render json: {errors: 'Incorrect username or password'}
        end
    end

end
