class LocationsController < ApplicationController
  def new
  	@location = Location.new
  	3.times do
  		@store = @location.stores.new
  	end
  end

  def create
  	binding.pry
  	@location = Location.new(location_params)
  	if @location.save!
  		render :text  => "Successfully Location Added"
  	end
  end

private
	
  def location_params
  	params.require(:location).permit(:city,:state, :stores_attributes => [:area,:pincode])
  end
end
