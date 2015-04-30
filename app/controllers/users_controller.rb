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
      if @user.groups.include?(@group)
        flash[:notice] = "You're already in " + @group.name + "!"
        redirect_to :back
      else
        @user.groups << @group 
        @group.users << @user # add user to group
        if @user.save
          flash[:notice] = "You've successfully joined " + @group.name + "!"
          redirect_to :back
        end
      end
  end
end
