Rails.application.routes.draw do
  get 'user/:user', to: 'welcome#user'
  get 'welcome/:first_name', to: 'welcome#show'

  get 'gossip/:id', to: 'welcome#gossip'
 
  get 'static_pages/contact', to: 'static_pages#contact'
  get 'static_pages/team', to: 'static_pages#team'
  get 'static_pages/index', to: 'static_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
