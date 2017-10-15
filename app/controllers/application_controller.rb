class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include ProjectManagerHelper
  include ScenariosHelper

  def authorize
       unless logged_in?
         redirect_to root_url
       end
    end
    
end
