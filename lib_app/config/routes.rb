Rails.application.routes.draw do

###users routes###	
  root to: "users#index"

  get "/users", to: "users#index", as: "users"

  get "/users/new", to: 'users#new', as: 'new_user'

  post '/users', to: 'users#create'

  get "/users/:id", to: "users#show"


###sign in####
  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"
  

###library routes###

	get "/libraries", to: "libraries#index"

	get "/libraries/new", to: "libraries#new", as: "new_library"

	post "/libraries", to:"libraries#create"


	get "/users/:user_id/libraries", to: "library_users#index", as: "user_libraries"
end
