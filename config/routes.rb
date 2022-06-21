Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'profile', to: 'pages#profile'
  resources 'trips', only: %w[show create update delete] do
    resources 'transportations', only: %w[create update delete]
    resources 'accomodations', only: %w[create update delete]
    resources 'activities', only: %w[create update delete]
  end
end
