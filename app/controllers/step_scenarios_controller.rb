class StepScenariosController < ProjectManagerController
  before_action :set_step_scenario, only: [:show, :edit, :update, :destroy]

  # GET /step_scenarios
  # GET /step_scenarios.json
  def index
    @step_scenarios = StepScenario.where(scenario_id: current_scenario.id)
  end

  # GET /step_scenarios/1
  # GET /step_scenarios/1.json
  def show
  end

  # GET /step_scenarios/new
  def new
    @step_scenario = StepScenario.new
  end

  # GET /step_scenarios/1/edit
  def edit
  end

  # POST /step_scenarios
  # POST /step_scenarios.json
  def create
    @step_scenario = StepScenario.new(step_scenario_params)
    @step_scenario.scenario_id = current_scenario.id

    respond_to do |format|
      if @step_scenario.save
        format.html { redirect_to @step_scenario, notice: 'Step scenario was successfully created.' }
        format.json { render :show, status: :created, location: @step_scenario }
      else
        format.html { render :new }
        format.json { render json: @step_scenario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_scenarios/1
  # PATCH/PUT /step_scenarios/1.json
  def update
    respond_to do |format|
      if @step_scenario.update(step_scenario_params)
        format.html { redirect_to @step_scenario, notice: 'Step scenario was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_scenario }
      else
        format.html { render :edit }
        format.json { render json: @step_scenario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_scenarios/1
  # DELETE /step_scenarios/1.json
  def destroy
    @step_scenario.destroy
    respond_to do |format|
      format.html { redirect_to step_scenarios_url, notice: 'Step scenario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_scenario
      @step_scenario = StepScenario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_scenario_params
      params.require(:step_scenario).permit(:sequence, :description)
    end
end
