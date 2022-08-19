Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    member do
      resources :bookmarks, only: [:new, :create]
    end # resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  # resources :reviews, only: :destroy
end

# Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#   resources :lists, only: [:index, :new, :create, :show] do
#     member do
#       resources :bookmarks, only: [:new, :create]
#     end
#   end
#   resources :bookmarks, only: :destroy
#   # Defines the root path route ("/")
#   # root "articles#index"
# end
