class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

#  def log_in_action
      #  redirect_to users_show_path
  # end



end
