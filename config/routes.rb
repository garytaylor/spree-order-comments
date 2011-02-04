Rails.application.routes.draw do
  resources :comments

  namespace :admin do
     resources :orders, :member => {:comments => :get}
  end
end



