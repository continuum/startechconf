# -*- coding: utf-8 -*-
require 'spec_helper'

describe "English Home page", js:true  do
  context "when english language is selected" do
    before do
      visit "/"
      click_link "Español"
      click_link "Inglés"
    end

    it "changes the page to english" do
      page.should have_no_text "ESTE AÑO"
      page.should have_text "THIS YEAR"
    end
  end
end
