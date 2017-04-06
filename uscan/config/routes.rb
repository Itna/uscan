Rails.application.routes.draw do
  get 'contact/index'
  get 'welcome/index'
  get 'search/search' , to: "search#search", as: "search"
  get 'welcome/index' , to: "weclome#index", as: "back"
  
  resources :searchs
  resources :contacts
  resources :form
  
  root 'welcome#index'
end
