#Ruote_Rails_Example1::Application.routes.draw do
Rails.application.routes.draw do

  mount Authentify::Engine => "/authentify/"
  mount BizTravels::Engine => "/biz_travels/"
  mount Commonx::Engine => "/commonx/"

  root :to => "authentify::sessions#new"
  match '/signin',  :to => 'authentify::sessions#new'
  match '/signout', :to => 'authentify::sessions#destroy'
  match '/user_menus', :to => 'user_menus#index'
  match '/view_handler', :to => 'authentify::application#view_handler'

  # catch all routing instruction
  match '/:controller(/:action(/:id))(.:format)'


=begin
  resources :definitions do
    member do
      put :setlocale
    end      
  end  
=end

  
end



