class AddSpecializationAreaToSymptoms < ActiveRecord::Migration[5.1]
  def change
    add_column :symptoms, :specialization_area_id, :integer
  end
end
