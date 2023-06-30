class UsersController < ApplicationController
    # GET  /users/:id
    def show
        user=specific_user
        render json:specific_user, include: :items
    end
    
    private
    def specific_user
        User.find(id:params[:id])
    end
    
end
