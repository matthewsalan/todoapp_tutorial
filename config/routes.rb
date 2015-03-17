Rails.application.routes.draw do
  get '/todo_lists/search', to: 'todo_lists#search', as: 'todo_lists_search'
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end

  root 'todo_lists#index'
end
