require 'rails_helper'

RSpec.describe "UseCases", type: :request do
  describe "GET /use_cases" do
    it "works! (now write some real specs)" do
      get use_cases_path
      expect(response).to have_http_status(200)
    end
  end
end
