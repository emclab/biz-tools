#Ruote_Rails_Example1::Application.routes.draw do
Rails.application.routes.draw do

  mount Authentify::Engine => "/authentify/"
  mount BizTravels::Engine => "/biz_travels/"
  match '/user_menus', :to => 'user_menus#index'
  match '/view_handler', :to => 'application#view_handler'

  root :to => 'authentify::sessions#new/'

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



