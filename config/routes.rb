Rails.application.routes.draw do
    root 'chatroom#index'
    get 'signup', to: 'users#new'
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    post 'message', to: 'messages#create'
    post 'users', to: 'users#create'
    mount ActionCable.server, at: '/cable'
end
