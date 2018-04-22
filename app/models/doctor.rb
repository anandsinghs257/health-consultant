class Doctor < ApplicationRecord

  paginates_per 5

  has_many :doctor_specializations
  has_many :specialization_areas, through: :doctor_specializations

  has_many :appointments
  has_many :patients, through: :appointments
  
  geocoded_by :full_address
  after_validation :geocode

  mount_uploader :profile_photo, ImageUploader

  has_many :doctor_available_slots
  accepts_nested_attributes_for :doctor_available_slots, reject_if: :all_blank, allow_destroy: true

  has_many :morning_slots
  accepts_nested_attributes_for :morning_slots, reject_if: :all_blank, allow_destroy: true

  has_many :afternoon_slots
  accepts_nested_attributes_for :afternoon_slots, reject_if: :all_blank, allow_destroy: true

  has_many :evening_slots
  accepts_nested_attributes_for :evening_slots, reject_if: :all_blank, allow_destroy: true




  def full_address
    "#{self.address} #{self.city} #{self.state} #{self.country} #{self.zipcode}"
  end

  def name 
    "#{self.first_name} #{self.last_name}"
  end

end
