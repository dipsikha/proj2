class LocationController < ApplicationController
	before_action :authenticate_user!
	def index
		@locations = Location.all
	end

	def create
	end
end
