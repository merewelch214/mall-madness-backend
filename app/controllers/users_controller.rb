class UsersController < ApplicationController

    def index
        users = User.all   
        render json: users, include: [:store, :cart], exclude: [:created_at, :updated_at]
    end

    def show
        user = User.find(params[:id])
        render json: user, include: [:store, :cart]
    end
    
    def create
        user = User.new(username: params[:username], password: params[:password], role: params[:role])
        if user.save
            render json: user
        else
            render json: {errors: user.errors.full_messages}
        end
    end

end
