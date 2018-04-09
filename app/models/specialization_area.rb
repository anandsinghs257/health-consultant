class SpecializationArea < ApplicationRecord
  has_many :doctor_specializations
  has_many :doctors, through: :doctor_specializations
  has_many :symptoms, dependent: :destroy
end
