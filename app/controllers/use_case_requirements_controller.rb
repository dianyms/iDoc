class UseCaseRequirementsController < ApplicationController
  before_action :set_use_case_requirement, only: [:show, :edit, :update, :destroy]

  # GET /use_case_requirements
  # GET /use_case_requirements.json
  def index
    @use_case_requirements = UseCaseRequirement.all
  end

  # GET /use_case_requirements/1
  # GET /use_case_requirements/1.json
  def show
  end

  # GET /use_case_requirements/new
  def new
    @use_case_requirement = UseCaseRequirement.new
  end

  # GET /use_case_requirements/1/edit
  def edit
  end

  # POST /use_case_requirements
  # POST /use_case_requirements.json
  def create
    @use_case_requirement = UseCaseRequirement.new(use_case_requirement_params)

    respond_to do |format|
      if @use_case_requirement.save
        format.html { redirect_to @use_case_requirement, notice: 'Use case requirement was successfully created.' }
        format.json { render :show, status: :created, location: @use_case_requirement }
      else
        format.html { render :new }
        format.json { render json: @use_case_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /use_case_requirements/1
  # PATCH/PUT /use_case_requirements/1.json
  def update
    respond_to do |format|
      if @use_case_requirement.update(use_case_requirement_params)
        format.html { redirect_to @use_case_requirement, notice: 'Use case requirement was successfully updated.' }
        format.json { render :show, status: :ok, location: @use_case_requirement }
      else
        format.html { render :edit }
        format.json { render json: @use_case_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /use_case_requirements/1
  # DELETE /use_case_requirements/1.json
  def destroy
    @use_case_requirement.destroy
    respond_to do |format|
      format.html { redirect_to use_case_requirements_url, notice: 'Use case requirement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_use_case_requirement
      @use_case_requirement = UseCaseRequirement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def use_case_requirement_params
      params.require(:use_case_requirement).permit(:use_case_id, :requirement_id)
    end
end
