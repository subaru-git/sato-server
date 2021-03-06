Rails.application.routes.draw do
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }
      get 'points', to: 'v1/points#history'
      get 'points/users', to: 'v1/points#user_points'
      get 'points/:user', to: 'v1/points#users_point'
      post 'points/send', to: 'v1/points#send_point'
    end
  end
end
