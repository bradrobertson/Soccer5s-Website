Soccer5s::Application.routes.draw do

  # This line mounts Refinery's routes at the root of your application.
  # This means, any requests to the root URL of your application will go to Refinery::PagesController#home.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Refinery relies on it being the default of "refinery"
  mount Refinery::Core::Engine, :at => '/'


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
