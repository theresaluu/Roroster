require 'spec_helper'

describe "Rosters" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/roroster/home'
      expect(page).to have_content('Sample App')
    end
  end
end
