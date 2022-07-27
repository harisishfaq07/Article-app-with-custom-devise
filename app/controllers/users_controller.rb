class UsersController < ApplicationController

def new
@user = User.new
end
def create
    @user = User.new(users_params)
    if @user.save
        # flash.alert = "User Successfully Created"
        flash.alert = " Welcome Mr. #{@user.username}"
        redirect_to user_path(@user)
    else
    render 'new'
    end

end
def show
@user = User.find(params[:id])
end
def index
    @users = User.all 
end

    def users_params
        params.require(:user).permit(:username , :email , :password_digest)
    end
end