Rails.application.routes.draw do
  get '/create_user', to: 'admin#create_user'
  get '/edit_user', to: 'admin#edit_user'
  get '/show_user', to: 'admin#show_user'
  # Ruta en el admin_controller para eliminar users de list_users
  delete 'destroy_user/:id', to: 'admin#destroy_user', as: :destroy_user
  # Permisos del admin
  resources :admin, only: [:index, :new, :create, :update]
  # Ruta para crear usuarios
  post 'admin/create', to: 'admin#create', as: 'admin_create'

  root "pages#index"

  get 'pages/index'
  get 'pages/agency_list'
  get 'pages/agents_list'
  get 'pages/contact'
  get 'pages/my_properties'
  get 'pages/user_profile'
  get '/list_properties', to: 'pages#list_properties'
  get '/agent_profile/:id', to: 'pages#agent_profile', as: 'agent_profile'
  get '/agency_profile/:id', to: 'pages#agency_profile', as: 'agency_profile'


  resources :properties



  get '/list_properties', to: 'pages#list_properties'
  get '/show_property', to: 'pages#show_property'
  get '/add_property', to: 'pages#add_property'
  get '/new', to: 'properties#new'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }




end
