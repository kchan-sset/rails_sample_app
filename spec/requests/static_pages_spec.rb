require 'spec_helper'

describe "Static Pages" do
  
  describe "Home Pages" do
    it "should have Sample App" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
      
    end
    
    it "should have the correct title tag" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Home')
    end
  end
  
  describe "Help Pages" do
    it "should have Help" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text =>'Help')
    end
    
    it "should have the correct title tag" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Help')
    end
  end
  
  describe "About Pages" do
    it "should have About" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end
    
    it "should have the correct title tag" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'About')
    end
  end
end
