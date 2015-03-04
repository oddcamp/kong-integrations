Rails.application.routes.draw do
  namespace :prisjakt do
    get 'products' => 'products#index'
  end

  namespace :pricerunner do
    get 'products' => 'products#index'
  end

  get 'home/index'

  root 'home#index'
end
