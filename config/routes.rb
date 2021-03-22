Rails.application.routes.draw do
  

  devise_for :users 
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  get 'contact_us/index'
  get 'contact_us/feedback'

  resources :passengers  
  resources :fbookings
  resources :flights
  resources :contact_us

  root 'home#index'

end
