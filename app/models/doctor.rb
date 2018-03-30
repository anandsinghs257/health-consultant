class Doctor < ApplicationRecord
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
