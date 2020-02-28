class UsersController < ApplicationController

    def index
        users = User.all   
        render json: users, include: [:store, :cart], exclude: [:created_at, :updated_at]
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user, include: [:store, :cart]
    end
    
    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
