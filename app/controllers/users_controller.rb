class UsersController < ApplicationController
before_action :set_user, only: [:show]
before_action :required , except: [:index , :new , :create]
def new
@user = User.new
end
def create
    @user = User.new(users_params)
    if @user.save
        # flash.alert = "User Successfully Created"
        # flash.alert = " Welcome Mr. #{@user.username}"
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    else
    render 'new'
    end

end
def show

# @users_articles = @user.articles.paginate(page: params(:page) , per_page: 1)
@users = @user.articles
end
def index
    @users = User.all 
end

    def users_params
        params.require(:user).permit(:username , :email , :password_digest)
    end

    def set_user
        @user = User.find(params[:id])
    end
end
