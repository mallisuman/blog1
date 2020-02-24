Rails.application.routes.draw do
  get 'welcome/index'
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
scope module: 'admin' do
  resources :articles, :comments
end
 


   root 'welcome#index'
   namespace :api do 
   		scope module: 'v1' do
   			resources :articles
   		end
   	end

end
