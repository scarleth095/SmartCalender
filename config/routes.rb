Rails.application.routes.draw do
  get 'events/index'

  get 'events/new'

  get 'events/create'

  get 'events/show'
    resources :events


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    root to: "pages#calendar" 
    
end
