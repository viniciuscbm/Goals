require "rails_helper"

RSpec.describe SalesmenController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/salesmen").to route_to("salesmen#index")
    end

    it "routes to #new" do
      expect(:get => "/salesmen/new").to route_to("salesmen#new")
    end

    it "routes to #show" do
      expect(:get => "/salesmen/1").to route_to("salesmen#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/salesmen/1/edit").to route_to("salesmen#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/salesmen").to route_to("salesmen#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/salesmen/1").to route_to("salesmen#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/salesmen/1").to route_to("salesmen#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/salesmen/1").to route_to("salesmen#destroy", :id => "1")
    end
  end
end
