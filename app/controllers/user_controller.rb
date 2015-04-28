class UserController < ApplicationController
	before_action :authenticate_user!
	def index
    	@users = User.all
  	end

  	def show
   	 	@users = User.find(params[:id])
  	end
  	def join
		@group = Group.find(params[:id]) 
		@user.group = current_group 
		@group.save
		redirect_to group_path
	end
end
