require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # User. As you add validations to User, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET #new" do
    it "returns http success" do
      get :new, params: {}
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "create a new session" do
        post :create, params: {session: valid_attributes}
        expect(assigns(:session)).to be_a_new(Session)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved user as @user" do
        post :create, params: {session: invalid_attributes}
        !expect(assigns(:session)).to be_a_new(Session)
      end

      it "re-renders the 'new' template" do
        post :create, params: {session: valid_attributes}
        expect(response).to render_template("new")
      end
    end
  end

  describe 'GET #destroy' do
    context 'when user is logged out' do
      before do
        delete :destroy
      end
      it { is_expected.to redirect_to root_url }
    end
  end
end
