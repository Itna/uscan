Rails.application.routes.draw do
  get 'contact/index'
  get 'welcome/index'
  get 'contact/index' , to: "contacts#index", as: "contact"
  get 'search/search' , to: "searchs#search", as: "search"
  
  resources :searchs
  resources :contacts
  
  root 'welcome#index'
end
