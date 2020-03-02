class CartsController < ApplicationController

    def index
        carts = Cart.all 
        render json: carts, except: [:created_at, :updated_at], include: :products
    end

    def show
        cart = Cart.find_by(id: params[:id])
        render json: cart, include: :products
    end

    def create
        cart = Cart.new(cart_params)
        if cart.save
            render json: cart
        else
            render json: {errors: cart.errors.full_messages}
        end
    end

    # def update 
    #     byebug
    #     cart = Cart.find_by(user_id: params[:user_id])
    #     cart.update(params)
    #     render json: cart
    # end

    private
    def cart_params
        params.require(:cart).permit(:user_id, :id)
    end

end
