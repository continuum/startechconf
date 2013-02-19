Startechconf::Application.routes.draw do
  root to: 'home#index'
  post 'preregister' => 'home#preregister'
end
