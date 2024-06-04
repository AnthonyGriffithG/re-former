class UsersController < ApplicationController
    def new
    end

    def create
        new_user = User.new(user_params)
        if (new_user.save)
            redirect_to rails_health_check_path
        else
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
