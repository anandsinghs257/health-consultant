class CreateMorningSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :morning_slots do |t|
      t.string :time_for
      t.string :time_to

      t.timestamps
    end
  end
end
