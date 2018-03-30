class HomeController < ApplicationController
  def index
    @q = SpecializationArea.ransack(params[:q])
    @specialization_areas = @q.result(distinct: true)
    @doctors = Doctor.last(6)
  end

  def doctor_search_result
    @q = SpecializationArea.ransack(params[:q])
    @specialization_areas = @q.result(distinct: true)
    @doctors = @specialization_areas.map {|sa| sa.doctors}.flatten
  end
end
