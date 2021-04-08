class ApprovalsController < ApplicationController

    def index
        approvals = Approval.all 
        render json: approvals
    end

    def show
        approval = Approval.find(params[:id])
        render json: approval
    end

    # def destroy
    #     note_to_delete = Note.find(params[:id])
    #     note_to_delete.destroy
    #     render json: note_to_delete
    # end

    def create
        approval = Approval.find_or_create_by(user_id: params[:user_id], photo_id: params[:photo_id])
        approval.update(approval: params[:approval])
        render json: approval
    end

end
