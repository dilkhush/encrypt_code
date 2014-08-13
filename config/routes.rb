FriendCodes::Application.routes.draw do
  resources :codes do
    collection do
      get 'home', 'encrypt_message'
    end
  end
  root to: 'codes#home'
end
