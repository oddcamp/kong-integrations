Rails.application.routes.draw do
  namespace :prisjakt do
    get 'products' => 'products#index'
  end

  namespace :pricerunner do
    get 'products' => 'products#index'
  end

  root 'prisjakt/products#index'
end
