class GroupsController < ApplicationController
	def create
    	@group = Group.create(group_params)
    	@locName = group_params[:location]
    	@actualLoc = Location.find_by name: @locName
    	@group.location_id = @actualLoc.id
    	if @group.save
	    	redirect_to ("/groups/") #Redirect to location of the group created
 		else 
 			flash[:error] = @group.errors.full_messages.to_sentence
 			redirect_to new_group_path
 		end
	end

	def group_params
    	params.require(:group).permit(:name, :description, :location, :time)
  	end

    def new
		 @group = Group.new
	end

	def destroy
		@group.destroy
		flash[:notice] = "This group has been deleted."
	end

	def index
		@group = Group.all
	end

	def show
		 @group = Group.find(params[:id])
	end

	def sortByTime
		 @sorted_groups = Group.all.sort_by {|g| Chronic.parse(g.time)}
	end

end
