Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  get "books/top" => "books#top"
  root to: 'books#top'
  get '/books/:id', to: 'books#show'
  patch 'books/:id' => 'books#update', as: 'update_book'
  post 'books' => 'books#create'
end
