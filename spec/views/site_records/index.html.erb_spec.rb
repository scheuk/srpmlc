require 'spec_helper'

describe "site_records/index" do
  before(:each) do
    assign(:site_records, [
      stub_model(SiteRecord,
        :site => nil,
        :user => nil,
        :tc => 1,
        :nc => 2,
        :br => 3,
        :ea => 4,
        :bd => 5
      ),
      stub_model(SiteRecord,
        :site => nil,
        :user => nil,
        :tc => 1,
        :nc => 2,
        :br => 3,
        :ea => 4,
        :bd => 5
      )
    ])
  end

  it "renders a list of site_records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
