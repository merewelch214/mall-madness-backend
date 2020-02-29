class ProductsController < ApplicationController
    
    def index        
        products = Product.all   
        render json: products
    end

    def show
        product = Product.find(params[:id])
        render json: product
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
        render json: product
    end

    def delete
        product = Product.find(product_params[:id])
        product.destroy
    end

    private
    def product_params
        params.require(:product).permit(:name, :description, :store_id, :price, :card_id, :img_url)
    end
end
