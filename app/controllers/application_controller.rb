class ApplicationController < ActionController::Base
    def index
        @categories = Category.all
      end

      before_action :configure_permitted_parameters, if: :devise_controller?

      protected
     
      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :username, :email, :password, :password_confirmation) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :username, :email, :password, :current_password) }
      end
     
     
end
