Rails.application.routes.draw do
  root to: 'contacts#new'
  resources :contacts, only: [ :create ]
  get '/mentions-legales', to: 'contacts#mentions_legales'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
