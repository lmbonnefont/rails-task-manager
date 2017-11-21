Rails.application.routes.draw do

  get "tasks/new", to: "tasks#new"
  post "tasks", to:"tasks#create"
  #Read all
  get "tasks", to: "tasks#index"
  #Read one
  get "tasks/:id", to: "tasks#show", as: :task
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "tasks/:id", to: "tasks#update"
  #Delete
  delete "tasks/:id", to: "tasks#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
