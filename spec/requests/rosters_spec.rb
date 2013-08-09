require 'spec_helper'

describe "Rosters" do
  describe "Home page" do
    it "should have the content 'giving you full-court advantage'" do
      visit '/roroster/home'
      expect(page).to have_content('giving you full-court advantage')
    end
  end

  describe "Add Page" do
    it "should have the content 'Add New Player'" do
      visit '/rosters/new'
      expect(page).to have_content('Add New Player')
    end
  end

  describe "Edit Page" do
    it "should have the content 'Edit Mutha Fucka'" do
      roster = Roster.create()
      id = roster.id.to_s

      path = "/rosters/"+id+"/edit"
      visit path
      expect(page).to have_content('')
    end
  end
end
