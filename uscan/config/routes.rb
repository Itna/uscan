Rails.application.routes.draw do

  get 'welcome/index'
  


  get 'search/search' , to: "search#search", as: "search"
  get 'welcome/index' , to: "weclome#index", as: "back"
  
  resources :searchs
  resources :forms
  
  root 'welcome#index'
end
