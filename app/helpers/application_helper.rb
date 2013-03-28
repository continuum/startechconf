module ApplicationHelper
  def current_locale
    params[:locale] || 'es'
  end

  def locale_li(locale)
    content_tag('li', class: ('selected' if current_locale == locale)) do
      #link_to t({'es' => :spanish, 'en' => :english, 'pt' => :portuguese}[locale]),
              #url_for(locale: locale)
    end
  end

  def preregistered_tweet_button
    %q|<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://www.startechconf.com" data-text="Me acabo de pre-registrar por un 30% de descuento en la @StarTechConf." data-lang="es" data-count="none">Twittear</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>|.html_safe
  end

  def preregistered_fb_button
    %q|<div class="fb-like" data-href="http://www.startechconf.com" data-send="true" data-layout="button_count" data-width="450" data-show-faces="true"></div>|.html_safe
  end

  def include_facebook_js_sdk
    %q|<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1&appId=138736539528656";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>|.html_safe
  end

end
