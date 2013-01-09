require 'spec_helper'

describe "site_records/edit" do
  before(:each) do
    @site_record = assign(:site_record, stub_model(SiteRecord,
      :site => nil,
      :user => nil,
      :tc => 1,
      :nc => 1,
      :br => 1,
      :ea => 1,
      :bd => 1
    ))
  end

  it "renders the edit site_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => site_records_path(@site_record), :method => "post" do
      assert_select "input#site_record_site", :name => "site_record[site]"
      assert_select "input#site_record_user", :name => "site_record[user]"
      assert_select "input#site_record_tc", :name => "site_record[tc]"
      assert_select "input#site_record_nc", :name => "site_record[nc]"
      assert_select "input#site_record_br", :name => "site_record[br]"
      assert_select "input#site_record_ea", :name => "site_record[ea]"
      assert_select "input#site_record_bd", :name => "site_record[bd]"
    end
  end
end
