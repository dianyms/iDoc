class ActorUseCasesController < ApplicationController
  before_action :set_actor_use_case, only: [:show, :edit, :update, :destroy]

  # GET /actor_use_cases
  # GET /actor_use_cases.json
  def index
    @actor_use_cases = ActorUseCase.all
  end

  # GET /actor_use_cases/1
  # GET /actor_use_cases/1.json
  def show
  end

  # GET /actor_use_cases/new
  def new
    @actor_use_case = ActorUseCase.new
  end

  # GET /actor_use_cases/1/edit
  def edit
  end

  # POST /actor_use_cases
  # POST /actor_use_cases.json
  def create
    @actor_use_case = ActorUseCase.new(actor_use_case_params)

    respond_to do |format|
      if @actor_use_case.save
        format.html { redirect_to @actor_use_case, notice: 'Actor use case was successfully created.' }
        format.json { render :show, status: :created, location: @actor_use_case }
      else
        format.html { render :new }
        format.json { render json: @actor_use_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_use_cases/1
  # PATCH/PUT /actor_use_cases/1.json
  def update
    respond_to do |format|
      if @actor_use_case.update(actor_use_case_params)
        format.html { redirect_to @actor_use_case, notice: 'Actor use case was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor_use_case }
      else
        format.html { render :edit }
        format.json { render json: @actor_use_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_use_cases/1
  # DELETE /actor_use_cases/1.json
  def destroy
    @actor_use_case.destroy
    respond_to do |format|
      format.html { redirect_to actor_use_cases_url, notice: 'Actor use case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_use_case
      @actor_use_case = ActorUseCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_use_case_params
      params.require(:actor_use_case).permit(:actor_id, :use_case_id)
    end
end
