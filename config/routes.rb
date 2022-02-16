Rails.application.routes.draw do
  get '/people/quick-edit', to: 'people#quick_edit'
  post '/people/quick-edit', to: 'people#add_one'
  resources :people
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
