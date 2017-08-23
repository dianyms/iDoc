require "rails_helper"

RSpec.describe UseCasesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/use_cases").to route_to("use_cases#index")
    end

    it "routes to #new" do
      expect(:get => "/use_cases/new").to route_to("use_cases#new")
    end

    it "routes to #show" do
      expect(:get => "/use_cases/1").to route_to("use_cases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/use_cases/1/edit").to route_to("use_cases#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/use_cases").to route_to("use_cases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/use_cases/1").to route_to("use_cases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/use_cases/1").to route_to("use_cases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/use_cases/1").to route_to("use_cases#destroy", :id => "1")
    end

  end
end
