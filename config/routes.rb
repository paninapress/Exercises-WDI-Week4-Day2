Store::Application.routes.draw do
  #sites controller
  root 'sites#index'


  #products controller

    get '/products', to: 'products#index', as: 'products'




  #categories controller

end
#  Prefix Verb   URI Pattern               Controller#Action
#     sites GET    /sites(.:format)          sites#index
#           POST   /sites(.:format)          sites#create
#  new_site GET    /sites/new(.:format)      sites#new
# edit_site GET    /sites/:id/edit(.:format) sites#edit
#      site GET    /sites/:id(.:format)      sites#show
#           PATCH  /sites/:id(.:format)      sites#update
#           PUT    /sites/:id(.:format)      sites#update
#           DELETE /sites/:id(.:format)      sites#destroy

#    Prefix Verb   URI Pattern                    Controller#Action
#      products GET    /products(.:format)            products#index
#               POST   /products(.:format)            products#create
#   new_product GET    /products/new(.:format)        products#new
#  edit_product GET    /products/:id/edit(.:format)   products#edit
#       product GET    /products/:id(.:format)        products#show
#               PATCH  /products/:id(.:format)        products#update
#               PUT    /products/:id(.:format)        products#update
#               DELETE /products/:id(.:format)        products#destroy
#    categories GET    /categories(.:format)          categories#index
#               POST   /categories(.:format)          categories#create
#  new_category GET    /categories/new(.:format)      categories#new
# edit_category GET    /categories/:id/edit(.:format) categories#edit
#      category GET    /categories/:id(.:format)      categories#show
#               PATCH  /categories/:id(.:format)      categories#update
#               PUT    /categories/:id(.:format)      categories#update
#               DELETE /categories/:id(.:format)      categories#destroy