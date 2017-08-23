class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
    def create
      @user = User.find_by(email: params[:session][:email].downcase)
      if @user && @user.authenticate(params[:session][:password])
        sign_in
        redirect_to project_users_path
      else
        render 'new'
      end
    end

    def destroy
      sign_out
      redirect_to root_url
    end

    def sign_in
      session[:user_id] = @user.id
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    def block_access
      if current_user.present?
       redirect_to users_path
      end
    end

    def logged_in?
      !current_user.nil?
    end

    def sign_out
     session.delete(:user_id)
     @current_user = nil
   end

end
