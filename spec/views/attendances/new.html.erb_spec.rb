require 'spec_helper'

describe "attendances/new" do
  before(:each) do
    assign(:attendance, stub_model(Attendance).as_new_record)
  end

  it "renders new attendance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attendances_path, :method => "post" do
    end
  end
end
