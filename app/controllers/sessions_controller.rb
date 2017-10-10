class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
  layout "session"
  
    def create
      @user = User.find_by(email: params[:session][:email].downcase)
      if @user && @user.authenticate(params[:session][:password])
        sign_in
        redirect_to admin_index_path
      else
        render 'new'
      end
    end

    def destroy
      sign_out
      redirect_to root_url
    end
end
