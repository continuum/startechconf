# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Home page", js:true  do
  context "when an email is entered in the preregistration" do
    before do
      visit "/es"
      fill_in "mail", with: "foo@gmail.com"
      find('.pre_register_button').click
    end

    it "increments the preregistration counter and tells the user that he is preregistered" do
      page.should have_text "001"
      page.should have_text "Gracias por pre-registrarte"
    end
  end
end
