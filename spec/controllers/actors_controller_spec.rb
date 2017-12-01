require 'rails_helper'

RSpec.describe ActorsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Actor. As you add validations to Actor, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ActorsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all actors as @actors" do
      actor = Actor.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:actors)).to eq([actor])
    end
  end

  describe "GET #show" do
    it "assigns the requested actor as @actor" do
      actor = Actor.create! valid_attributes
      get :show, params: {id: actor.to_param}, session: valid_session
      expect(assigns(:actor)).to eq(actor)
    end
  end

  describe "GET #edit" do
    it "assigns the requested actor as @actor" do
      actor = Actor.create! valid_attributes
      get :edit, params: {id: actor.to_param}, session: valid_session
      expect(assigns(:actor)).to eq(actor)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Actor" do
        expect {
          post :create, params: {actor: valid_attributes}, session: valid_session
        }.to change(Actor, :count).by(1)
      end

      it "assigns a newly created actor as @actor" do
        post :create, params: {actor: valid_attributes}, session: valid_session
        expect(assigns(:actor)).to be_a(Actor)
        expect(assigns(:actor)).to be_persisted
      end

      it "redirects to the created actor" do
        post :create, params: {actor: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Actor.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved actor as @actor" do
        post :create, params: {actor: invalid_attributes}, session: valid_session
        expect(assigns(:actor)).to be_a_new(Actor)
      end

      it "re-renders the 'new' template" do
        post :create, params: {actor: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested actor" do
        actor = Actor.create! valid_attributes
        put :update, params: {id: actor.to_param, actor: new_attributes}, session: valid_session
        actor.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested actor as @actor" do
        actor = Actor.create! valid_attributes
        put :update, params: {id: actor.to_param, actor: valid_attributes}, session: valid_session
        expect(assigns(:actor)).to eq(actor)
      end

      it "redirects to the actor" do
        actor = Actor.create! valid_attributes
        put :update, params: {id: actor.to_param, actor: valid_attributes}, session: valid_session
        expect(response).to redirect_to(actor)
      end
    end

    context "with invalid params" do
      it "assigns the actor as @actor" do
        actor = Actor.create! valid_attributes
        put :update, params: {id: actor.to_param, actor: invalid_attributes}, session: valid_session
        expect(assigns(:actor)).to eq(actor)
      end

      it "re-renders the 'edit' template" do
        actor = Actor.create! valid_attributes
        put :update, params: {id: actor.to_param, actor: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested actor" do
      actor = Actor.create! valid_attributes
      expect {
        delete :destroy, params: {id: actor.to_param}, session: valid_session
      }.to change(Actor, :count).by(-1)
    end

    it "redirects to the actors list" do
      actor = Actor.create! valid_attributes
      delete :destroy, params: {id: actor.to_param}, session: valid_session
      expect(response).to redirect_to(actors_url)
    end
  end

end
