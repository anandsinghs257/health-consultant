class AddDoctorToSlots < ActiveRecord::Migration[5.1]
  def change
    add_column :morning_slots, :doctor_id, :integer
    add_column :afternoon_slots, :doctor_id, :integer
    add_column :evening_slots, :doctor_id, :integer
  end
end
