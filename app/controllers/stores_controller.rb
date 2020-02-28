class StoresController < ApplicationController
    
    def index
        stores = Store.all   
        render json: stores, include: :products
    end

    def show
        store = Store.find_by(id: params[:id])
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

    private
    def store_params
        permit(:store).require(:name, :owner_id)
    end
end
