require 'spec_helper'



describe "Rosters", :type => :feature, :js =>true do 
  describe "Home page" do
    it "should have the content 'giving you full-court advantage'" do
      visit rosters_path
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
    it "should have the content 'Edit Player Stats'" do
      roster = Roster.create()
      id = roster.id.to_s
      path = "/rosters/"+id+"/edit"
      visit path
      expect(page).to have_content('Edit Player Stats')
    end
  end

  describe "Show Page" do
    it "should have the content 'Updated Player Stats'" do
      roster = Roster.create()
      id = roster.id.to_s
      path = "/rosters/"+id
      visit path
      expect(page).to have_content('Updated Player Stats')
    end
  end

  describe "Photo Page" do
    it "should have the content 'Update Player Photo'" do
      roster = Roster.create()
      id = roster.id.to_s
      puts id
      path = "/rosters/"+id+"/photo"
      visit path
      expect(page).to have_content('Update Player Photo')
    end
  end

  # describe "RostersController" do
  #   it "initializes with rosters"
  #   rosters = 

end
