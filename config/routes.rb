Rails.application.routes.draw do
  resources :artists, :songs, only: [:index, :show, :edit, :new, :update, :patch]
end
