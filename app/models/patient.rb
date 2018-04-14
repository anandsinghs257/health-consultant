class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments

  def name
    "#{self.first_name} #{self.last_name}"
  end

end
