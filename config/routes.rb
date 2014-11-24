Rails.application.routes.draw do
  
  resources :products

  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
    devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  end

  root 'products#index'
end
