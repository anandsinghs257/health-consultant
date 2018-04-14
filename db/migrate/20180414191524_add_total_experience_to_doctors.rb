class AddTotalExperienceToDoctors < ActiveRecord::Migration[5.1]
  def change
    add_column :doctors, :total_experience_years, :integer
  end
end
