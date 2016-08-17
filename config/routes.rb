Rails.application.routes.draw do

  mount Disruptions::API => '/'

  root to: 'home#index'
end
