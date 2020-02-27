class CartsController < ApplicationController

    def index
        carts = Cart.all 
        render json: carts
    end

    def create
        cart = Cart.new(cart_params)
        if cart.save
            render json: cart
        else
            render json: {errors: cart.errors.full_messages}
        end
    end

    private
    def cart_params
        params.require(:cart).permit(:user_id)
    end

end
