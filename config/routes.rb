Rails.application.routes.draw do
  # And since we're now using all five RESTful routes, we can omit the only option:
  # resources :birds, only: [:index, :show, :create, :update, :destroy]
  resources  :birds
  patch "/birds/:id/like", to: "birds#increment_likes"
end
