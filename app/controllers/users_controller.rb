class UsersController < ApplicationController
    def index
        #Login Page
    
    end

    def show
        #User Settings
    end

    def new
        #Creating New User
        @user = User.new
    end

    def create
        #Creating New User
        @user = User.new(user_params)

        if(@user.save)
            redirect_to home_path
        else
            render 'new'
        end
    end

    def edit
        #Edit Account
    end

    def update
        #Update Account
    end

    def destroy
        #Delete Account
    end

    private def user_params
        params.require(:user).permit(:name, :email, :password)
    end

end
