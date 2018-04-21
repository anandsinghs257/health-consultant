class AppointmentsController < ApplicationController
  
  def new_appointment
    @doctor = Doctor.find(params[:doctor_id])
    if params[:morning_slot_id].present?
      @slot = MorningSlot.find(params[:morning_slot_id])
    elsif params[:noon_slot_id].present?
      @slot = AfternoonSlot.find(params[:noon_slot_id])
    elsif params[:evening_slot_id].present?
      @slot = EveningSlot.find(params[:evening_slot_id])
    end
  end

  def create_appointment
    @patient = Patient.new(patient_params)
    if @patient.save
      @appointment = @patient.appointments.create(appointment_params)
      respond_to do |format|
        format.html { redirect_to "/confirm-appointment?id=#{@appointment.id}", notice: 'Thank You! Your appointment has been confirmed.' }
      end
    else
      render 'new_appointment'
    end
  end

  def appointment_confirmation
    @appointment = Appointment.find(params[:id])
  end

  private

    def patient_params
      params.require(:new_appointment).permit(:first_name, :last_name, :contact, :age, :gender)
    end

    def appointment_params
      params.require(:new_appointment).permit(:doctor_id, :appointment_datetime)
    end

end
