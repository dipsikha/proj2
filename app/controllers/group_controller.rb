class GroupController < ApplicationController

	def create
    	Group.create(group_params)
	end

	def group_params
    	params.require(:group).permit(:name, :location)
  	end

	def join
		@group = Group.find(params[:gid])
		user = User.find(params[:uid])
   		group.users <<  user #Add user to group
   		group.save
    end


	def destroy
		@group.destroy
		flash[:notice] = "This group has been deleted."
	end

	def index
		@groups = Group.all
	end

	def show
		 @groups = Group.find(params[:id])
	end

end
