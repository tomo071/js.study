Rails.application.routes.draw do
  get 'menus/new'
  get 'menus/index'
  get 'menus/show'
  get 'menus/edit'
  root 'homes#top'
  resources :genres, only:[:index,:create,:edit,:upddate,:destoroy]
  resources :menus

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
