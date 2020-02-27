class Api::V1::StoresController < ApplicationController
    
    def index
        stores = Store.all   
        render :json stores
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
    def stores_params
        
    end
end
