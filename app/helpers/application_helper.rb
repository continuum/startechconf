module ApplicationHelper
  def current_locale
    params[:locale] || 'es'
  end

  def locale_li(locale)
    content_tag('li', class: ('selected' if current_locale == locale)) do
      link_to t({'es' => :spanish, 'en' => :english, 'pt' => :portuguese}[locale]),
              url_for(locale: locale)
    end
  end
end
