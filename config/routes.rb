Rails.application.routes.draw do
  get 'omniauth_callbacks/index'

    root 'categories#index'
    devise_for :users, :controllers => {:omniauth_callbacks => "omniauth_callbacks"}

  get 'testimonals/index'

  get 'testimonals/show'

  get 'testimonals/new'

  get 'testimonals/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
