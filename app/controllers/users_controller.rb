class UsersController < ApplicationController
	before_action :authenticate_user!
	def index
    	@users = User.all
  	end

  	def show
   	 	@user = User.find(params[:id])
  	end

    def join
      @group = Group.find(params[:id])
      @user = current_user
      @user.groups << @group 
      @group.users << @user # add user to group
      @user.save
      redirect_to :back
  end
end
