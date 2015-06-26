Rails.application.routes.draw do
    root               "main#welcome"
     get  '/'     =>     'main#home' 
     get  '/contact' =>  'main#contact'
     post '/contact'    =>     'main#create'   
     get  '/about'  => 'main#about'   
     get  'signup'  => 'users#new'
     get  'login'   => 'sessions#new'
     post 'login'   => 'sessions#create'
     get  '/logout' =>  'main#logout'
     delete 'logout' => 'sessions#destroy'
     match 'auth/twitter/callback', to: 'sessions#twittercreate', via: [:get, :post]
     resources :users    
end
