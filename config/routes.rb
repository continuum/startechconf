Startechconf::Application.routes.draw do
  match '2011' => redirect("http://2011.startechconf.com")
  scope '(:locale)', constraints: {locale: 'en|es|pt'} do
    root to: 'home#index'
    post 'preregister' => 'home#preregister'
  end
end
