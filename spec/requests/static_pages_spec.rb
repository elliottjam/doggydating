require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path }

    it "should have the content 'Doggy Dating App'" do
      expect(page).to have_content('Doggy Dating App')
    end

    it "should have the base title" do
      expect(page).to have_content("Doggy Dating App")
    end

    it "should not have a custom page title" do
      expect(page).not_to have_content(' | Home')
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_content("Doggy Dating App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit about_path
        expect(page).to have_content('About Us')
    end

    it "should have the title 'About us'" do
       visit about_path
      expect(page).to have_content("Doggy Dating App | About ")
    end
  end

    describe "Contact page" do

      it "should have the content 'Contact'" do
         visit contact_path
        expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact Us'" do
      visit contact_path
      expect(page).to have_content("Doggy Dating App | Contact")
    end
  end
end