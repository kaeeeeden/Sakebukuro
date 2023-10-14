class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?

    def create
        like = current_user.likes.create(post_id: params[:post_id]) #user_idとpost_idの二つを代入
        redirect_back(fallback_location: root_path)
    end
    
    def destroy
        like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
        like.destroy
        redirect_back(fallback_location: root_path)
    end

protected
def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile, :image])
end

end
