Rails.application.routes.draw do
  resources :books, except: [:show, :edit]
  # get 'books/new'
  # post '/books' => 'books#create'
  # get '/books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'bookshow'
  get 'books/:id/edit' => 'books#edit', as: 'edit_list'
  get '/' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
