require 'rails_helper'

RSpec.describe "ActorUseCases", type: :request do
  describe "GET /actor_use_cases" do
    it "works! (now write some real specs)" do
      get actor_use_cases_path
      expect(response).to have_http_status(200)
    end
  end
end
