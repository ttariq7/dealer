class HomeController < ApplicationController

	def index


		@user = User.find_by_id(5)
		@vehicles = @user.vehicles
    	@vehicle = current_user.vehicles.build if signed_in?


	end


end
