class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users, include: '*.*'
    end

    def show
        user = User.find(params[:id])
        render json: user, include: '*.*'
    end

    def create
        if User.find_by(username: params[:username])
        render json: {error: 'Username already exists'}
        else
        user = User.create({first_name: params[:first_name], last_name: params[:last_name], email: params[:email], username: params[:username], password: params[:password]})
        render json: user, include: '*.*'
        end
    end

end