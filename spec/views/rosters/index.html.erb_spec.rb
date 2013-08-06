require 'spec_helper'

describe "rosters/index" do
  before(:each) do
    assign(:rosters, [
      stub_model(Roster,
        :overall => "Overall",
        :scheduling => "Scheduling",
        :fun => "Fun",
        :day => "Day",
        :night => "Night",
        :food => "Food",
        :contact1 => "Contact1",
        :contact2 => "Contact2",
        :contact3 => "Contact3",
        :freq => "Freq"
      ),
      stub_model(Roster,
        :overall => "Overall",
        :scheduling => "Scheduling",
        :fun => "Fun",
        :day => "Day",
        :night => "Night",
        :food => "Food",
        :contact1 => "Contact1",
        :contact2 => "Contact2",
        :contact3 => "Contact3",
        :freq => "Freq"
      )
    ])
  end

  it "renders a list of rosters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Overall".to_s, :count => 2
    assert_select "tr>td", :text => "Scheduling".to_s, :count => 2
    assert_select "tr>td", :text => "Fun".to_s, :count => 2
    assert_select "tr>td", :text => "Day".to_s, :count => 2
    assert_select "tr>td", :text => "Night".to_s, :count => 2
    assert_select "tr>td", :text => "Food".to_s, :count => 2
    assert_select "tr>td", :text => "Contact1".to_s, :count => 2
    assert_select "tr>td", :text => "Contact2".to_s, :count => 2
    assert_select "tr>td", :text => "Contact3".to_s, :count => 2
    assert_select "tr>td", :text => "Freq".to_s, :count => 2
  end
end
