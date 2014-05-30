Woodler::Application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root                         to: 'index#index'
  get '/'                      =>  'index#index'
  get '/catalogue(/:category)' =>  'catalogue#show'

  post '/create_item' => 'index#create_item'

  resources :items do

  end
end
