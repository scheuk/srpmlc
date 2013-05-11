require 'spec_helper'

describe "attendances/edit" do
  before(:each) do
    @attendance = assign(:attendance, stub_model(Attendance))
  end

  it "renders the edit attendance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attendances_path(@attendance), :method => "post" do
    end
  end
end
