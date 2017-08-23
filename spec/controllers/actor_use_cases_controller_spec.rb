require 'rails_helper'

RSpec.describe ActorUseCasesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ActorUseCase. As you add validations to ActorUseCase, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ActorUseCasesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all actor_use_cases as @actor_use_cases" do
      actor_use_case = ActorUseCase.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:actor_use_cases)).to eq([actor_use_case])
    end
  end

  describe "GET #show" do
    it "assigns the requested actor_use_case as @actor_use_case" do
      actor_use_case = ActorUseCase.create! valid_attributes
      get :show, params: {id: actor_use_case.to_param}, session: valid_session
      expect(assigns(:actor_use_case)).to eq(actor_use_case)
    end
  end

  describe "GET #new" do
    it "assigns a new actor_use_case as @actor_use_case" do
      get :new, params: {}, session: valid_session
      expect(assigns(:actor_use_case)).to be_a_new(ActorUseCase)
    end
  end

  describe "GET #edit" do
    it "assigns the requested actor_use_case as @actor_use_case" do
      actor_use_case = ActorUseCase.create! valid_attributes
      get :edit, params: {id: actor_use_case.to_param}, session: valid_session
      expect(assigns(:actor_use_case)).to eq(actor_use_case)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ActorUseCase" do
        expect {
          post :create, params: {actor_use_case: valid_attributes}, session: valid_session
        }.to change(ActorUseCase, :count).by(1)
      end

      it "assigns a newly created actor_use_case as @actor_use_case" do
        post :create, params: {actor_use_case: valid_attributes}, session: valid_session
        expect(assigns(:actor_use_case)).to be_a(ActorUseCase)
        expect(assigns(:actor_use_case)).to be_persisted
      end

      it "redirects to the created actor_use_case" do
        post :create, params: {actor_use_case: valid_attributes}, session: valid_session
        expect(response).to redirect_to(ActorUseCase.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved actor_use_case as @actor_use_case" do
        post :create, params: {actor_use_case: invalid_attributes}, session: valid_session
        expect(assigns(:actor_use_case)).to be_a_new(ActorUseCase)
      end

      it "re-renders the 'new' template" do
        post :create, params: {actor_use_case: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested actor_use_case" do
        actor_use_case = ActorUseCase.create! valid_attributes
        put :update, params: {id: actor_use_case.to_param, actor_use_case: new_attributes}, session: valid_session
        actor_use_case.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested actor_use_case as @actor_use_case" do
        actor_use_case = ActorUseCase.create! valid_attributes
        put :update, params: {id: actor_use_case.to_param, actor_use_case: valid_attributes}, session: valid_session
        expect(assigns(:actor_use_case)).to eq(actor_use_case)
      end

      it "redirects to the actor_use_case" do
        actor_use_case = ActorUseCase.create! valid_attributes
        put :update, params: {id: actor_use_case.to_param, actor_use_case: valid_attributes}, session: valid_session
        expect(response).to redirect_to(actor_use_case)
      end
    end

    context "with invalid params" do
      it "assigns the actor_use_case as @actor_use_case" do
        actor_use_case = ActorUseCase.create! valid_attributes
        put :update, params: {id: actor_use_case.to_param, actor_use_case: invalid_attributes}, session: valid_session
        expect(assigns(:actor_use_case)).to eq(actor_use_case)
      end

      it "re-renders the 'edit' template" do
        actor_use_case = ActorUseCase.create! valid_attributes
        put :update, params: {id: actor_use_case.to_param, actor_use_case: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested actor_use_case" do
      actor_use_case = ActorUseCase.create! valid_attributes
      expect {
        delete :destroy, params: {id: actor_use_case.to_param}, session: valid_session
      }.to change(ActorUseCase, :count).by(-1)
    end

    it "redirects to the actor_use_cases list" do
      actor_use_case = ActorUseCase.create! valid_attributes
      delete :destroy, params: {id: actor_use_case.to_param}, session: valid_session
      expect(response).to redirect_to(actor_use_cases_url)
    end
  end

end
