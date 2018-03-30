class CreateSpecializationAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :specialization_areas do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
