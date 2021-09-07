Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'tasks/new', to: 'tasks#new', as: :new_task # form route; needs to be above show route
  post 'tasks', to: 'tasks#create' # submit action for form

  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # our edit form
  patch 'tasks/:id', to: 'tasks#update' # submit action for our edit form

  delete 'tasks/:id', to: 'tasks#destroy'
end
