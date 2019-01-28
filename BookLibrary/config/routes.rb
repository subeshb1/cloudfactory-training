Rails.application.routes.draw do
  get 'books/add'
  get 'books/index'
  get 'weather', to: 'weather#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
