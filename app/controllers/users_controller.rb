class UsersController < ApplicationController
 #before_action :log_in_action

 def index
   @currentUser = current_user.id
 end


end
