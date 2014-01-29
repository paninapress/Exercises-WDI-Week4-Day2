Store::Application.routes.draw do
  #products controller
    root 'products#index'

    get '/products', to: 'products#index', as: 'products'
    


  #categories controller

end
