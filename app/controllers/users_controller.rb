class UsersController < ApplicationController

    def index
      @list = User.all
    end

    def show
    end

    def edit
    end

    def update
      @user = User.find(params[:id])
      user.username = :username
      user.password = :password
      user.email = :email
        
        if @user.save
          redirect_to new_user_path
        else
          render :edit
        end
    end

    def new
        @user = User.new
    end
    
    def create
      @user = User.new(user_params)
        
        if @user.save
          redirect_to new_user_path
        else
          render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
