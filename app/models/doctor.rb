class Doctor < ApplicationRecord
  has_many :doctor_specializations
  has_many :specialization_areas, through: :doctor_specializations
  
  geocoded_by :full_address
  after_validation :geocode

  mount_uploader :profile_photo, ImageUploader

  def full_address
    "#{self.address} #{self.city} #{self.state} #{self.country} #{self.zipcode}"
  end

  def name 
    "#{self.first_name} #{self.last_name}"
  end

end
