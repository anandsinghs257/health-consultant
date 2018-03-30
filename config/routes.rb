Rails.application.routes.draw do
  resources :doctors
  resources :specialization_areas
  root to: 'home#index'

  namespace :admin do 
    resources :doctors do 
      collection do 
        get :add_specialization_to_doctor
        post :create_specializations_for_doctor
      end
    end
  end
  get '/doctor-search-result' => "home#doctor_search_result"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
