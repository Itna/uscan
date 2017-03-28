Rails.application.routes.draw do
  get 'welcome/index'
  get 'search/contact' , to: "search#contact", as: "contact"
  get 'search/index' , to: "search#index", as: "index"
  
  resources :searchs
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
