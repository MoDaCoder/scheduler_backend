Rails.application.routes.draw do
  get 'members/index'
  devise_for :members, controllers: {
    sessions: 'members/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root to: "static#home"

    match '/members',   to: 'members#index',   via: 'get'
end
