class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :contact
      t.string :gender
      t.string :address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
