class ApplicationController < ActionController::Base
    helper_method :current_user
    helper_method :logged_in?
    helper_method :current_exchange
    helper_method :pinned_to_exchange?

    def current_user 
        User.find_by(id: session[:user_id])
    end

    def logged_in?
        !current_user.nil?
    end

    def current_exchange
        Exchange.find_by(id: session[:exchange_id])
    end

    def pinned_to_exchange?
        !current_exchange.nil?
    end
    
    def log_in(user)
        session[:user_id] = user.id
    end
end
