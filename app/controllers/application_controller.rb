class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

  SUPPORTED_LOCALES = {
    'en' => 'en',
    'es' => 'es-CL',
    'pt' => 'pt-BR'
  }

  def set_locale
    locale = SUPPORTED_LOCALES[params[:locale]]
    I18n.locale = locale if locale
  end
end
