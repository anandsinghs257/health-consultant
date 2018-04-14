class CreateDoctorAvailableSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :doctor_available_slots do |t|
      t.string :day
      t.time :from
      t.time :to
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
