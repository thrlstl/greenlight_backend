class CollectionsController < ApplicationController

    def index
        collections = Collection.all 
        render json: collections
    end

    def show
        collection = Collection.find(params[:id])
        render json: collection
    end

    def create
        collection = Collection.create({name: params[:name], location: params[:location], user_id: params[:user_id]})
        render json: collection
    end

end
