require 'spec_helper'

describe "attendances/index" do
  before(:each) do
    assign(:attendances, [
      stub_model(Attendance),
      stub_model(Attendance)
    ])
  end

  it "renders a list of attendances" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
