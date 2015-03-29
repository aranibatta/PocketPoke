Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  resources :pokemons
  patch "/damage", to: "pokemons#damage", as: :damage
  patch "/capture", to: "pokemons#capture", as: :capture

end
