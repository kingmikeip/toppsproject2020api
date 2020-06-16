Rails.application.routes.draw do
  resources :cards
  resources :users
  
  get 'cards/user/:id', to: 'cards#show_user_cards'
  get 'cards/artist/:artist', to: 'cards#show_artist'
  get 'cards/player/:player', to: 'cards#show_player'
end
