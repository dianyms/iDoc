require "rails_helper"

RSpec.describe UseCaseRequirementsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/use_case_requirements").to route_to("use_case_requirements#index")
    end

    it "routes to #new" do
      expect(:get => "/use_case_requirements/new").to route_to("use_case_requirements#new")
    end

    it "routes to #show" do
      expect(:get => "/use_case_requirements/1").to route_to("use_case_requirements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/use_case_requirements/1/edit").to route_to("use_case_requirements#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/use_case_requirements").to route_to("use_case_requirements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/use_case_requirements/1").to route_to("use_case_requirements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/use_case_requirements/1").to route_to("use_case_requirements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/use_case_requirements/1").to route_to("use_case_requirements#destroy", :id => "1")
    end

  end
end
