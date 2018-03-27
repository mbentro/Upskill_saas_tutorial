#Need to do Controller, View and Route to get a basic page working...
Rails.application.routes.draw do
  root to: 'pages#home' #root = home, root needs to point to the pages controller, home method
  get 'about', to: 'pages#about'  #About page link
  resources :contacts   #Identical to [get 'contacts/new', to: 'contacts#new'] sortcut to generate new routes (new/edit/show/etc)
end
