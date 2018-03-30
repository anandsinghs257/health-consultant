json.extract! doctor, :id, :first_name, :last_name, :address, :city, :state, :country, :zipcode, :latitude, :longitude, :contact, :profile_photo, :about, :age, :gender, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
