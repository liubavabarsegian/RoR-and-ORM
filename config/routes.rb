require "addressable/uri"

Rails.application.routes.draw do
  root 'home#welcome'

  get 'form', to: 'pages#form'
  get 'output', to: 'pages#output'
  get 'xml', to: 'pages#db_to_xml'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
