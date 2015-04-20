Rails.application.routes.draw do
    root               "main#welcome"
     get  '/'     =>     'main#home' 
     get  '/contact' =>  'main#contact' 
     get  '/about'  => 'main#about'   
     get  'signup'  => 'users#new'
     resources :users    
end
