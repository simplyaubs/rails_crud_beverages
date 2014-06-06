Rails.application.routes.draw do

  root 'welcome#index'

  resources :beverages

end
