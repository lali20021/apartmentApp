Rails.application.routes.draw do
  resources :apartment_complexes
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '*path', to: 'apartment_complex#index', constraints: ->(request){ request.format.html? }
  root to: 'apartment_complex#index'

end
