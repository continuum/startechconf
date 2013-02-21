# -*- coding: utf-8 -*-
require 'spec_helper'

describe "/2011", js:true  do
  before do
    visit "/2011"
  end

  it "redirecciona a 2011.startechconf.com" do
    page.current_url.should == "http://2011.startechconf.com/"
  end
end
