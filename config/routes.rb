Rails.application.routes.draw do
  
	resources :lesons, only: [:show]

  get "/courses/:id", to: 'courses#show', as: :course

  get '/courses',to: 'courses#index'

  get 'pages/view'

  devise_for :users, controllers: {registrations: "registrations"}
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'courses#index'
  devise_scope :user do
  	
  end
end
