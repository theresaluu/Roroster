require 'spec_helper'

describe "rosters/show" do
  before(:each) do
    @roster = assign(:roster, stub_model(Roster,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Overall/)
    rendered.should match(/Scheduling/)
    rendered.should match(/Fun/)
    rendered.should match(/Day/)
    rendered.should match(/Night/)
    rendered.should match(/Food/)
    rendered.should match(/Contact1/)
    rendered.should match(/Contact2/)
    rendered.should match(/Contact3/)
    rendered.should match(/Freq/)
  end
end
