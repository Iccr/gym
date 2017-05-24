Rails.application.routes.draw do
  get 'exercises/index'

  get 'exercises/create'

  get 'exercises/update'

  get 'exercises/show'

  get 'exercises/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
