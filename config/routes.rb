Rails.application.routes.draw do

authenticated :user do
    root to: 'users#show', as: :authenticated_root
  end

devise_for :users

  get 'users/show'

  get 'main/index'

  get 'contact' => 'main#contact'

  root 'main#index'

  get 'main' => 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
