Rails.application.routes.draw do
  get 'contact/index'
  get 'welcome/index'
  get 'contact/index' , to: "contact#contact", as: "contact"
  get 'search/search' , to: "search#search", as: "search"
  
  resources :searchs
  resources :contacts
  
  root 'welcome#index'
end
