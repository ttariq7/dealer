class HomeController < ApplicationController

	def index

		@user = current_user
		@vehicles = @user.vehicles
    	@vehicle = current_user.vehicles.build if signed_in?

	end


end
