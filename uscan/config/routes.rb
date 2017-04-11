Rails.application.routes.draw do

  get 'welcome/index'
<<<<<<< HEAD
  


=======
>>>>>>> e965a1fe58cdebf8834c0830fbdd920826448349
  get 'search/search' , to: "search#search", as: "search"
  get 'welcome/index' , to: "weclome#index", as: "back"
  
  resources :searchs
<<<<<<< HEAD
  resources :forms
=======
  resources :contacts
  resources :form
>>>>>>> e965a1fe58cdebf8834c0830fbdd920826448349
  
  root 'welcome#index'
end
