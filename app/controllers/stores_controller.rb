class StoresController < ApplicationController
    
    def index
        stores = Store.all   
        render json: stores, include: :products
    end

    def show
        store = Store.find_by(id: params[:id])
        render json: store, include: :products
    end

    def show_based_on_owner
        store = Store.find_by(user_id: params[:user_id])
        render json: store, include: :products
    end

    def create
        store = Store.new(store_params)
        if store.save
            render json: store
        else
            render json: {errors: store.errors.full_messages}
        end
    end

    def update
        store = Store.find_by(id: params[:id])
        store.update(name: params[:name], category: params[:category])
        
    end

    private
    def store_params
        permit(:store).require(:user_id, :name, :category)
    end
end
