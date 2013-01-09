require 'spec_helper'

describe "site_records/show" do
  before(:each) do
    @site_record = assign(:site_record, stub_model(SiteRecord,
      :site => nil,
      :user => nil,
      :tc => 1,
      :nc => 2,
      :br => 3,
      :ea => 4,
      :bd => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
