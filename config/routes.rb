Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  devise_scope :user do match '/registrations/coachinfo', to: 'registrations#coachinfo', via: 'get', as: :user end

  #match '/registrations/coachinfo', to: 'registrations#coachinfo', via: 'get', as: :user
  root 'static_pages#index'
  resources :p, controller: :profile
  resources :after_signup
end
