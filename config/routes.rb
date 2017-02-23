Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'pages#home'
   get 'about', to: 'pages#about'
   resources :usermessages, only: :create
   get 'contactus', to: 'usermessages#new', as: 'new_usermessage'   
end
