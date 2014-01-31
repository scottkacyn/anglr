Anglr::Application.routes.draw do
  
  resources :publishers

  get "tags/:tag", to: "articles#index", as: :tag
  get "categories/:category", to: "articles#index", as: :category
  get "categories/:category_id", to: "articles#index", as: :category_id
  get "authors/:author", to: "articles#index", as: :author

  resources :articles

  devise_for :users, controllers: {registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords"}, skip: [:sessions, :registrations]
  get "landings/index"

  root 'articles#index'

  #->Prelang (user_login:devise/stylized_paths)
  devise_scope :user do
    get    "login"   => "devise/sessions#new",         as: :new_user_session
    post   "login"   => "devise/sessions#create",      as: :user_session
    delete "signout" => "devise/sessions#destroy",     as: :destroy_user_session
    
    get    "signup"  => "devise/registrations#new",    as: :new_user_registration
    post   "signup"  => "devise/registrations#create", as: :user_registration
    get    "account" => "devise/registrations#edit",   as: :edit_user_registration
  end

end
