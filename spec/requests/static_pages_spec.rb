require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App"}
  
  describe "Home Page" do

    it "should have the contents 'Sample App' " do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  
  end

  describe "Help page" do

    it "should have content 'Help' " do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have the right title help" do
      visit '/static_pages/help'
      page.should have_selector('title', 
                    :text => "#{base_title} | Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About Us' " do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should have the right title About Us" do
      visit '/static_pages/about'
      page.should have_selector('title', 
        :text => "#{base_title} | About Us")
    end

  end

  describe "Contact Page" do
    it "should have content 'contact' " do
      visit '/static_pages/contact'
      page.should have_content('Contact Us')
    end

    it "should have the right title 'Contact Us' " do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} | Contact Us")
    end
  end

end
