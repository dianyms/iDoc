require 'rails_helper'

RSpec.describe "StepScenarios", type: :request do
  describe "GET /step_scenarios" do
    it "works! (now write some real specs)" do
      get step_scenarios_path
      expect(response).to have_http_status(200)
    end
  end
end
