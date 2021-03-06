Rails.application.routes.draw do
  # devise_for :admins
  devise_for :investigators, controllers: { registrations: 'investigators/registrations'}

  # get '/admins/new' => "investigators#new"
  # scope "/admin" do
    # resources :investigators
  # end


  # #instructions to bypass devise ----------------------------
  # resources :investigators, except: :create
  # get 'investigator/new' => "investigator#new"
  #   # Name it however you want
  # post 'create_investigator' => 'investigators#create', as: :create_investigator
  # # end devise bypass -------------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.


  get '/testforms' => 'testforms#index'

  get '/errors/not_found' => 'errors#not_found'

  get '/complaints' => 'complaints#index'

  root "complaints#new"

  get "complaints/new" => "complaints#new"

  get 'complaints/find' => 'complaints#show', as: 'complaints_find'

  get 'complaints/download' => 'complaints#download'

  post "complaints" => "complaints#create"

  post 'messages' => 'messages#create', as: 'messages'

  get 'messages' => 'messages#message_poll'

  put "complaints/:id" => "complaints#update", as: "update_complaint"

  get "/investigator_admin" => "new_investigators#new"

  put "/investigator_admin/:id" => "new_investigators#update"

  post "/investigator_admin" => "new_investigators#create"

  delete "/investigator_admin/:id" => "new_investigators#delete"

  get "/complaints/:id/podio_export" => "complaints#podio_export", as: 'podio_export_complaint'


end
