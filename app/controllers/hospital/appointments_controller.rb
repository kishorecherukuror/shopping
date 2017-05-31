class Hospital::AppointmentsController < HospitalController
 layout "hospital"
  def new
  	@appointment = Appointment.new
  	@physicians = Physician.all
  	@patients = Patient.all
  end

  def create
  	@appointment = Appointment.new(appointment_params)
  	if @appointment.save
  		redirect_to hospital_appointments_path
  	end
  end

  def index
  end

private
  def appointment_params
  	params.require(:appointment).permit!
  end
end
