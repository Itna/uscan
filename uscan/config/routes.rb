Rails.application.routes.draw do
  
  get 'search/search' , to: "search#search", as: "search"
  get 'welcome/index' , to: "welcome#index", as: "back"
  
  resources :welcome
  resources :searchs
  resources :forms
  
  root :to => 'welcome#index'
  
end
