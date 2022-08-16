Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #CRUD

  #Read
  get "/loans", to: "loans#index"
  get "loans/new", to: "loans#new"
  get "/loans/:id", to: "loans#show", as: :loan
  #Create
  post "/loans", to: "loans#create"
  #Update
  get "loans/:id/edit", to: "loans#edit", as: :edit_loan
  patch "loans/:id", to: "loans#update"
  #Delete
  delete "loans/:id", to: "loans#destroy", as: :delete_loan
  # resources :loans

end
