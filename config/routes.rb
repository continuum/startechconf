Startechconf::Application.routes.draw do
  match '2011' => redirect("http://2011.startechconf.com")
  match 'ProgramaDeAuspicios2013.pdf' => redirect("/sponsors-es.pdf")
  match 'SponsorsPlan.pdf' => redirect("/sponsors-en.pdf")
  scope '(:locale)', constraints: {locale: 'en|es|pt'} do
    root to: 'home#index'
    resources 'speakers'
    resources 'organizers'
    resources 'schedule'
    resources 'streaming'
    match 'conduct' => 'coc#index'
  end
end
