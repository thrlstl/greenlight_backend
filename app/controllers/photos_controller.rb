class PhotosController < ApplicationController

    def index
        photos = Photos.all 
        render json: photos
    end

    def create
        photo = Photo.create({photo: params[:photo], collection_id: params[:collection_id]})
        # puts photo
        # photo.photo.attach(
        #     ActiveStorage::Blob.create_and_upload!(
        #         io: File.open(params[:data]),
        #         filename: params[:data].original_filename,
        #         content_type: params[:data].content_type
        #         )
        # )
        render json: photo
    end

end
