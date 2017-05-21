Rails.application.routes.draw do
get 'containers/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :companies do
  resources :ships
end


resources :companies do
  resources :bill_of_landings do
    resources :containers
  end
end

resources :ships do
  member do
    get :preview
  end
end

# resources :clients, shallow: true  do
#   resources :bill_of_landings do
#     resources :containers
#   end
# end

resources :clients do
  resources :bill_of_landings do
    resources :containers
  end
end

#get '/productos/:id', to: 'productos#mostrar', as: 'produ'

post '/bill_of_landings/:id', to: 'bill_of_landings#destroy'

end
