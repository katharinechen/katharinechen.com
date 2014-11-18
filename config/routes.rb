Rails.application.routes.draw do

  root :to => 'application#index'
  match '/contacts',     to: 'contacts#new',             via: 'get'
  
  resources "contacts", only: [:new, :create]

end  