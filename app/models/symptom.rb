class Symptom < ApplicationRecord

  belongs_to :specialization_area, optional: true

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Symptom.create! row.to_hash
    end
  end

end
