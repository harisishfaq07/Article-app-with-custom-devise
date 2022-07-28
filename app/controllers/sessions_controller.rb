class SessionsController < ApplicationController

    def new


    end

    def create
      

        user = User.find_by(email: params[:sessions][:email] , password_digest: params[:sessions][:password])
        if user
            session[:user_id] , session[:username] = user.id , user.username
            # session[:username] = user.username
            redirect_to user_path(user)
        else
            render 'new'
            flash.alert = "Invalid user"
        end
    end

    def destroy

session[:user_id] = nil
session[:username] = nil
redirect_to login_path
    end



end