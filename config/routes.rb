Startechconf::Application.routes.draw do
  root to: 'home#index'
  post 'preregister' => 'home#preregister'
  match '2011' => redirect("http://2011.startechconf.com")
end
