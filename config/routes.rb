Rails.application.routes.draw do
  resources :books, except: [:show, :edit, :update, :delete]
  # get 'books/new'
  # post '/books' => 'books#create'
  # get '/books' => 'books#index'
  root :to => 'homes#top'
  get 'books/:id' => 'books#show', as: 'bookshow'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
