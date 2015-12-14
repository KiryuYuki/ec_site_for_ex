class Api::BaseController < ActionController::Base
  protect_from_forgery with: :null_session

  # before_action :authenticate_user_with_token!

  private
    def authenticate_user_with_token!
      if params[:user_email] && params[:user_token]
        if user = User.find_by(email: params[:user_email])
          if Devise.secure_compare(user.authentication_token, params[:user_token])
            sign_in user, store: false
          end
        end
      end
      unless current_user
        render json: { errors: "メールアドレスまたはトークンが間違っています" }, status: 401
      end
    end
end
