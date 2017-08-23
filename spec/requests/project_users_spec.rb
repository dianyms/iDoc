require 'rails_helper'

RSpec.describe "ProjectUsers", type: :request do
  describe "GET /project_users" do
    it "works! (now write some real specs)" do
      get project_users_path
      expect(response).to have_http_status(200)
    end
  end
end
