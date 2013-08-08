require 'spec_helper'

describe "Rosters" do
  describe "Home page" do
    it "should have the content 'Listing rosters'" do
      visit '/roroster/home'
      expect(page).to have_content('Listing rosters')
    end
  end
end
