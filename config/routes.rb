Rails.application.routes.draw do


#we call `resources` method and pass it a `Symbol`.
#This instructs Rails to create post routes for creating, updating, viewing, and deleting
#instances of `Post`
resources :posts
resources :advertisements
#modify the `about` route to allow users to visit `/about`, rather than `/welcome/about`
get 'about' => 'welcome#about'

root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
