Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'tv_shows/show'
  get 'tv_shows/search_results'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
