class Hospital::PatientsController < HospitalController
  def new
  	@patient = Patient.new
  end

  def create
  	@patient = Patient.new(patient_params)
  	if @patient.save
  		redirect_to hospital_patients_path
  	end
  end

  def index
  end

private

  def patient_params
  	params.require(:patient).permit!
  end
end
