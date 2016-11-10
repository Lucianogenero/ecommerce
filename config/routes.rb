Rails.application.routes.draw do
  devise_for :users
  resources :destroys
  resources :estoques
  resources :subcategoriaprodutos
  resources :produtos
  resources :categoriaprodutos
  #resources :finalizar_compras

  resources :clientes
  get '/clientes/buscar_cliente', controller: 'clientes', action: 'buscar_cliente', as: 'buscar_cliente' #buscar Clientes
  #get '/clientes/buscar_cliente', to: 'buscar_cliente'

  resources :admins

  get 'principals/index'
  root 'principals#index'
  get 'application', controller: 'principals', action: 'index' #buscar home

  resources :users
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'

  
  get '/carrinhos' => 'carrinhos#index'
  get '/carrinhos/clear' => 'carrinhos#clearCart'
  get '/carrinhos/:id' => 'carrinhos#add'

   

  #get '/adicionar_carrinhos/:id', controller: 'carrinhos', action: 'adicionar_carrinho', as: 'adicionar_carrinho'
  #get '/carrinhos', controller: 'carrinhos', action: 'show'
  #post '/carrinhos', controller: 'carrinhos', action: 'excluir_carrinho', as: 'excluir_carrinho'

  #get '/finalizar_compras', controller: 'finalizar', action: 'finalizar_compra'
  
  #resources :carrinhos
  #get '/carrinhos', controller: 'carrinhos', action: 'excluir_produto', as: 'excluir_produto'


  #resources :carrinhos
  #post "/application/index", to: "produtos_id#index"
  #post 'carrinhos/index'
  #
  #get '/application/buscar', to: '/application', as: "/principals"


  #get ':estoques/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
