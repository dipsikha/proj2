class GroupController < ApplicationController

	def create
    	@group = Group.create(group_params)
    	if @group.save
	    	redirect_to ("/groups/") #Redirect to location of the group created
 		else 
 			flash[:error] = @group.errors.full_messages.to_sentence
 			redirect_to new_group_path
 		end
	end

	def group_params
    	params.require(:group).permit(:name, :location)
  	end

    def new
		 @group = Group.new
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

	def sortByTime
		 @sorted_groups = Group.sort_by {|g| Chronic.parse(g.time)}
	end
	def join
		@group = Group.find(params[:id])
		user = current_user 
		group.users <<  user # add user to group
		@group.save
		redirect_to group_path
	end

end
