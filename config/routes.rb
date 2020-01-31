Rails.application.routes.draw do
  resources :parks do
    resources :reviews
  end
end
