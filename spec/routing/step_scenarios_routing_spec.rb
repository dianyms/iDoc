require "rails_helper"

RSpec.describe StepScenariosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/step_scenarios").to route_to("step_scenarios#index")
    end

    it "routes to #new" do
      expect(:get => "/step_scenarios/new").to route_to("step_scenarios#new")
    end

    it "routes to #show" do
      expect(:get => "/step_scenarios/1").to route_to("step_scenarios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/step_scenarios/1/edit").to route_to("step_scenarios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/step_scenarios").to route_to("step_scenarios#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/step_scenarios/1").to route_to("step_scenarios#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/step_scenarios/1").to route_to("step_scenarios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/step_scenarios/1").to route_to("step_scenarios#destroy", :id => "1")
    end

  end
end
