class HomeController < ApplicationController
  
  def index
    @doctors = Doctor.last(6)
  end

  def doctor_search_result
    q = params[:q]
    @specialization_areas = SpecializationArea.search(name_cont: q).result
    @symptoms = Symptom.search(name_cont: q).result
    
    @doctors_by_specialization_areas = @specialization_areas.map {|sa| sa.doctors if sa.doctors.present? }.compact.flatten

    @doctors_by_symptoms = @symptoms.map {|sym| sym.specialization_area.doctors if sym.specialization_area.doctors.present?}.compact.flatten.uniq

    @doctors = @doctors_by_specialization_areas + @doctors_by_symptoms
    @doctors.uniq
  end

  def advanced_search
    lat = params[:doctor_search][:latitude].to_f
    long = params[:doctor_search][:longitude].to_f
    @doctors = Doctor.near([lat, long], 50, units: :km)
  end

end
