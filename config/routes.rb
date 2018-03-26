Rails.application.routes.draw do
  root to: 'pages#home' #root = home, root needs to point to the pages controller, home method
  get 'about', to: 'pages#about'  #About page link
end
