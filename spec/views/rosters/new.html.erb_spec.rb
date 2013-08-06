require 'spec_helper'

describe "rosters/new" do
  before(:each) do
    assign(:roster, stub_model(Roster,
      :overall => "MyString",
      :scheduling => "MyString",
      :fun => "MyString",
      :day => "MyString",
      :night => "MyString",
      :food => "MyString",
      :contact1 => "MyString",
      :contact2 => "MyString",
      :contact3 => "MyString",
      :freq => "MyString"
    ).as_new_record)
  end

  it "renders new roster form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rosters_path, "post" do
      assert_select "input#roster_overall[name=?]", "roster[overall]"
      assert_select "input#roster_scheduling[name=?]", "roster[scheduling]"
      assert_select "input#roster_fun[name=?]", "roster[fun]"
      assert_select "input#roster_day[name=?]", "roster[day]"
      assert_select "input#roster_night[name=?]", "roster[night]"
      assert_select "input#roster_food[name=?]", "roster[food]"
      assert_select "input#roster_contact1[name=?]", "roster[contact1]"
      assert_select "input#roster_contact2[name=?]", "roster[contact2]"
      assert_select "input#roster_contact3[name=?]", "roster[contact3]"
      assert_select "input#roster_freq[name=?]", "roster[freq]"
    end
  end
end
