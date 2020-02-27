class Api::V1::ProductsController < ApplicationController
    
    def index        
        products = Product.all   
        render :json products
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
        product.update(name: product_params[:name], description: product_params[:description], price: product_params[:price], cart_id: product_params[:cart_id])
        render :json product
    end

    def delete
        product = Product.find(product_params[:id])
        product.destroy
    end

    private
    def products_params
        params.require(:prodcut).permit(:name, :description, :store_id, :price, :card_id)
    end
end
