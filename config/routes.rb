Rails.application.routes.draw do
  get 'homes/top'
  resources :genres, only:[:index,:create,:edit,:upddate,:destoroy]
  resources :menus

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
