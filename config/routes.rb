Rails.application.routes.draw do
  devise_for :admins
  root to: 'comics#home'
  resources :comics
  get '/about', to:'comics#about'
  get '/contact', to: 'comics#contact'
  get '/othercomics', to: 'comics#other_comics'
end
