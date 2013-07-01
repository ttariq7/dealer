class VehiclesController < ApplicationController
before_filter :correct_user,   only: :destroy

  def create
    @vehicle = current_user.vehicles.build(params[:vehicle])
    if @vehicle.save
      flash[:success] = "Vehicle created!"
      redirect_to :back
    else
      render 'static_pages/home'
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def destroy
    @vehicle.destroy
    redirect_to :back
  end

    private

    def correct_user
      @vehicle = current_user.vehicles.find_by_id(params[:id])
      redirect_to root_url if @vehicle.nil?
    end
end