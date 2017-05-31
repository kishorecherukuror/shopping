class Hospital::PhysiciansController < HospitalController
  def new
  	@physician = Physician.new
  end

  def create
  	@physician = Physician.new(physician_params)
  	if @physician.save
  		redirect_to hospital_physicians_path
  	end
  end

  def index
  end

private

  def physician_params
  	params.require(:physician).permit!
  end
end
