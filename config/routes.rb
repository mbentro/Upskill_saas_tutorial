#Need to do Controller, View and Route to get a basic page working...
Rails.application.routes.draw do
  root to: 'pages#home' #root = home, root needs to point to the pages controller, home method
  get 'about', to: 'pages#about'  #About page link
  resources :contacts   #Identical to [get 'contacts/new', to: 'contacts#new'] sortcut to generate new routes (new/edit/show/etc)
  get 'contact-us', to: 'contacts#new' #point the custom path name (contact-us) to the approriate controller (contacts) and action (new)
end
