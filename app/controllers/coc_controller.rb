class CocController < ApplicationController
  def index
    if I18n.locale
      render "index.#{I18n.locale}"
    else
      render "index.es-CL"
    end
  end
end
