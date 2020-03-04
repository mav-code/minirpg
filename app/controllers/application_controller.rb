class ApplicationController < ActionController::Base
    
      before_action :auths
      before_action :authenticate!
    

      private
    
      def auths
        @logged_in_user_id = session[:user_id]
        @logged_in = !!@logged_in_user_id
    
        @notification = flash[:notification]
        @errors = flash[:errors]
        
        if @logged_in
          @logged_in_user = User.find(@logged_in_user_id) 
         
        end
      end
    
      def authenticate!
        unless @logged_in
          flash[:errors] = [ "Log in first!" ]
          redirect_to new_login_path
        end
      end
    
      def authorized?(user_id)
        user_id == @logged_in_user_id
      end
    
    end
   
