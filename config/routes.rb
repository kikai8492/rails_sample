# Rails.application.routes.draw do
  
#   # get 'blogs/index'
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   get '/blogs', to: 'blogs#index'
#   get '/stocks', to: 'stocks#index'
# end
Rails.application.routes.draw do
  resources :blogs do
    collection do
      post :confirm
    end
  end
end