Ticketee::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  
  get '/awaiting_confirmation',
    :to => "users#confirmation",
    :as => 'confirm_user'
    
  root :to => "projects#index"
  
  resources :projects do
    resources :tickets do
      collection do
        get :search
      end 
    end
  end
    
  resources :tickets do
    resources :comments
    resources :tags do
      member do
        delete :remove
      end 
    end
  end
      
  namespace :admin do
    root :to => "base#index"
    resources :users do
      resources :permissions
    end
    resources :states do
      member do
        get :make_default
      end
    end
  end
  
  put '/admin/users/:user_id/permissions',
                 :to => 'admin/permissions#update',
                 :as => :update_user_permissions

  resources :files
end
