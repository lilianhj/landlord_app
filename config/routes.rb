Rails.application.routes.draw do

  get "/", to: 'homepage#home', as: "root"
  resources :landlords
	resources :complaints
	root 'complaints#index'
  get "/pages/:page" => "pages#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
