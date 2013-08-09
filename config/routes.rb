MokkaDevelopers::Application.routes.draw do
  root to: "topics#index"

  resources :topics do
    resources :replies, only: [:create, :destroy]
  end
end
