class ApplicationController < ActionController::Base

    helper_method :logged_in? , :current_user
    def current_user
        User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?

        !!current_user
    end

    def require

    end

    
end
