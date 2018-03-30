class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.float :latitude
      t.float :longitude
      t.string :contact
      t.string :profile_photo
      t.text :about
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
