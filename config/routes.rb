Soccer5s::Application.routes.draw do
  
  resources :clients, :only => [:new, :index, :show, :create]

  root :to => "public#home"
  match '/what', :to => 'public#what'
  match '/facilities', :to => 'public#facilities'
  match '/events', :to => 'public#events'
  match '/training', :to => 'public#training'
  match '/competition', :to => 'public#competition', :as => 'comp'
  match '/about', :to => 'public#about'

  resource :contact, :only => [:new, :show, :create]
  
  resources :competitions do
    collection do
      get 'terms'
      get 'entry'
    end
  end
  
end
