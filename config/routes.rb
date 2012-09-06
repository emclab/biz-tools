#Ruote_Rails_Example1::Application.routes.draw do
Rails.application.routes.draw do

  mount Authentify::Engine => "/authentify/"
  mount BizTravels::Engine => "/biz_travels/"
  match '/user_menus', :to => 'user_menus#index'

  root :to => 'authentify::sessions#new/'



  # catch all routing instruction
  match '/:controller(/:action(/:id))(.:format)'
  
end



