class CreateDoctorSpecializations < ActiveRecord::Migration[5.1]
  def change
    create_table :doctor_specializations do |t|
      t.references :doctor, foreign_key: true
      t.references :specialization_area, foreign_key: true

      t.timestamps
    end
  end
end
