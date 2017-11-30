Rails.application.routes.draw do

resources :posts
resources :questions

#modify the `about` route to allow users to visit `/about`, rather than `/welcome/about`
get 'about' => 'welcome#about'

root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
