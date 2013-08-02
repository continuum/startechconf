# -*- coding: utf-8 -*-
require 'spec_helper'

describe "English Home page", js:true  do
  context "when english language is selected" do
    before do
      visit "/"
      click_link "Español"
      click_link "English"
    end

    it "changes the page to english" do
      page.should have_no_text "OCTUBRE"
      page.should have_text "OCTOBER"
    end
  end
end
