Soccer5s::Application.routes.draw do
  
  resources :clients, :only => [:new, :index, :show, :create]

  root :to => "public#home"
  match '/what', :to => 'public#what'
  match '/facilities', :to => 'public#facilities'
  match '/kids', :to => 'public#kids'
  match '/training', :to => 'public#training'
  match '/competition', :to => 'public#competition'
  match '/about', :to => 'public#about'

  resource :contact, :only => [:new, :show, :create]
end
