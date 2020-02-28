class ProductsController < ApplicationController
    
    def index        
        products = Product.all   
        render json: products
    end

    def show
        product = Product.find(params[:id])
    end
    
    def create
        product = Product.new(product_params)
        if product.save
            render json: product
        else 
            render json: {errors: product.errors.full_messages}
        end
    end

    def update 
        product = Product.find(product_params[:id])
        product.update(product_params)
            # name: product_params[:name], description: product_params[:description], price: product_params[:price], cart_id: product_params[:cart_id])
        render json: product
    end

    def delete
        product = Product.find(product_params[:id])
        product.destroy
    end

    private
    def product_params
        params.require(:product).permit(:name, :description, :store_id, :price, :card_id)
    end
end
