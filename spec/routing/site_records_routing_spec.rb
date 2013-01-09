require "spec_helper"

describe SiteRecordsController do
  describe "routing" do

    it "routes to #index" do
      get("/site_records").should route_to("site_records#index")
    end

    it "routes to #new" do
      get("/site_records/new").should route_to("site_records#new")
    end

    it "routes to #show" do
      get("/site_records/1").should route_to("site_records#show", :id => "1")
    end

    it "routes to #edit" do
      get("/site_records/1/edit").should route_to("site_records#edit", :id => "1")
    end

    it "routes to #create" do
      post("/site_records").should route_to("site_records#create")
    end

    it "routes to #update" do
      put("/site_records/1").should route_to("site_records#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/site_records/1").should route_to("site_records#destroy", :id => "1")
    end

  end
end
