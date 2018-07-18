Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope ENV['RAILS_RELATIVE_URL_ROOT'] || '/' do
    resources :contacts, only: [:new, :create]
    resources :visitors, only: [:new, :create]
    root to: 'visitors#new'
  end
end
