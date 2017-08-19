Rails.application.routes.draw do
  get 'home/index'
  devise_for :users, controllers: {registrations: 'users/registrations'
}

  get 'testimonals/index'

  get 'testimonals/show'

  get 'testimonals/new'

  get 'testimonals/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
