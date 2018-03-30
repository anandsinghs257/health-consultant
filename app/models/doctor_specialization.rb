class DoctorSpecialization < ApplicationRecord
  belongs_to :doctor, optional: true
  belongs_to :specialization_area, optional: true
end
