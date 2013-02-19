# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Home page", js:true  do
  context "cuando se ingresa un correo en el preregistro" do
    before do
      visit "/"
      click_link "Pre-Regístrate"
      fill_in "mail", with: "foo@gmail.com"
      click_link "Enviar"
    end

    it "incrementa el contador de preregistrados e indica que el usuario se preregistró" do
      page.should have_text "001"
      page.should have_text "Gracias por pre-registrarte"
    end
  end
end
