Dealer::Application.routes.draw do
  resources :microposts


  authenticated :user do
    root :to => 'home#index'
  end


  root to: 'home#index'


  resources :vehicles


  devise_scope :user do
    root :to => "devise/registrations#new"
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end


  devise_for :users, :controllers => { :registrations => "registrations", :confirmations => "confirmations" }
  match 'users/bulk_invite/:quantity' => 'users#bulk_invite', :via => :get, :as => :bulk_invite
  
  resources :users do
    get 'invite', :on => :member
  end

  match '/signin',  to: 'devise#sessions#new'
  match '/dashboard',  to: 'users#dashboard'
  match '/results',  to: 'home#results'
    match '/result',  to: 'home#results1'
  

end
