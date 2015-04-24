class LocationController < ApplicationController
	before_action :authenticate_user!
	def index
		@locations = Location.all
	end

	def show
		 @locations = Location.find(params[:id])
	end

end
