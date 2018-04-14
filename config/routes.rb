Rails.application.routes.draw do
  
  resources :doctors, only: [:show, :index]
  # resources :appointments do 
  # end
  root to: 'home#index'

  namespace :admin do 
    resources :doctors do 
      collection do 
        get :add_specialization_to_doctor
        post :create_specializations_for_doctor
      end
    end
    resources :symptoms do 
      collection do 
        post :import
      end
    end
    resources :specialization_areas
  end
  
  get '/doctor-search-result' => "home#doctor_search_result"
  get '/advanced-search' => "home#advanced_search"

  get '/appointment-new' => "appointments#new_appointment"
  post 'appointments/create_appointment'
  get '/confirm-appointment' => "appointments#appointment_confirmation"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
