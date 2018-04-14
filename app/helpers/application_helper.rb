module ApplicationHelper

  def get_doctors_slot doctor_id
    @doctor = Doctor.find(doctor_id)
    @doctor.doctor_available_slots.map {|das| [das.from.strftime("%H:%M %p"), das.to.strftime("%H:%M %p")] if das.day == "monday"}.compact.flatten
  end

end
