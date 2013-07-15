class HomeController < ApplicationController

before_filter :check_for_mobile


	def index


		@user = User.find_by_id(5)
		@vehicles = @user.vehicles
    	@vehicle = current_user.vehicles.build if signed_in?
    	@micropost = Micropost.new


	end


end
