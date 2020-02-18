Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'task/new', to: 'tasks#new', as: 'newrestaurant'
  post 'tasks', to: 'tasks#create'

  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: 'displaytask'

  get 'task/:id/edit', to: 'tasks#edit', as: 'edittask'
  patch 'task/:id', to: 'tasks#update', as: 'task'

  delete 'task/:id', to: 'tasks#destroy', as: 'destroytask'
end
