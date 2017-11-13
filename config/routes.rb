Rails.application.routes.draw do

  resources :tasks

authenticated :user do
    root to: 'tasks#index', as: :authenticated_root
  end

devise_for :users

  get 'task_new' => "tasks#new"

  get 'users/show'

  get 'main/index'

  get 'contact' => 'main#contact'

  root 'main#index'

  get 'main' => 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
