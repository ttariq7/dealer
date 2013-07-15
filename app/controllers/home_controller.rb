class HomeController < ApplicationController

before_filter :check_for_mobile


	def index


		@user = User.find_by_id(1)
		@vehicles = @user.vehicles.all.sort_by { |a| -(a.price.to_i) }
    	@vehicle = current_user.vehicles.build if signed_in?
    	@micropost = Micropost.new


	end


end
