class HomeController < ApplicationController
  def preregister
    @preregistro = Preregistro.new(mail: params['mail'])
    unless @preregistro.save
      @errors = @preregistro.errors
    end
    render :index
  end
end
