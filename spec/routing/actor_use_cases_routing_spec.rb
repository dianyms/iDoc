require "rails_helper"

RSpec.describe ActorUseCasesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/actor_use_cases").to route_to("actor_use_cases#index")
    end

    it "routes to #new" do
      expect(:get => "/actor_use_cases/new").to route_to("actor_use_cases#new")
    end

    it "routes to #show" do
      expect(:get => "/actor_use_cases/1").to route_to("actor_use_cases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/actor_use_cases/1/edit").to route_to("actor_use_cases#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/actor_use_cases").to route_to("actor_use_cases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/actor_use_cases/1").to route_to("actor_use_cases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/actor_use_cases/1").to route_to("actor_use_cases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/actor_use_cases/1").to route_to("actor_use_cases#destroy", :id => "1")
    end

  end
end
