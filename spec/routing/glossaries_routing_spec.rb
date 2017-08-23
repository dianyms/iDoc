require "rails_helper"

RSpec.describe GlossariesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/glossaries").to route_to("glossaries#index")
    end

    it "routes to #new" do
      expect(:get => "/glossaries/new").to route_to("glossaries#new")
    end

    it "routes to #show" do
      expect(:get => "/glossaries/1").to route_to("glossaries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/glossaries/1/edit").to route_to("glossaries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/glossaries").to route_to("glossaries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/glossaries/1").to route_to("glossaries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/glossaries/1").to route_to("glossaries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/glossaries/1").to route_to("glossaries#destroy", :id => "1")
    end

  end
end
