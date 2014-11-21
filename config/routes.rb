Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  devise_scope :user do match '/registrations/coachinfo', to: 'registrations#coachinfo', via: 'get', as: :user end

  root 'static_pages#index'
  resources :p, controller: :profile
  resources :after_signup
  resources :listings
  
end
