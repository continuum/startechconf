# -*- coding: utf-8 -*-
require 'spec_helper'

describe "/organizers", js:true  do
	before do
	  visit "/organizers"
	end

	it "changes the page to english" do
	  page.should have_text "Continuum"
	end
end

