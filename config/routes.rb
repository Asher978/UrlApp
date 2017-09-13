Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # commentted out for heroku deployement
  # root "categories#index" 
  root 'welcome#index'

  resources :categories do
    resources :urls
  end

end
