class ApplicationController < ActionController::Base
    include ActionController::Cookies
    def authorize
      return render json: {errors: []}, status: :unauthorized unless session.include? :admin_id
    end
   # rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

   # before_action :authorize
    #private
    
  #def authorize
    #@current_user = User.find_by(id: session[:user_id])

   # render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_user
  #end

 # def render_unprocessable_entity_response(exception)
  #  render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  #end
end
