class RequirementsController < ProjectManagerController
  before_action :set_requirement, only: [:show, :edit, :update, :destroy]

  # GET /requirements
  # GET /requirements.json
  def index
    @requirements = Requirement.where(project_id: current_project.id)
  end

  # GET /requirements/1
  # GET /requirements/1.json
  def show
    @requirements = Requirement.where(project_id: current_project.id)
  end

  # GET /requirements/new
  def new
    @requirement = Requirement.new
  end

  # GET /requirements/1/edit
  def edit
  end

  # POST /requirements
  # POST /requirements.json
  def create
    @requirement = Requirement.new(requirement_params)
    @requirement.project_id = current_project.id

    respond_to do |format|
      if @requirement.save
        format.html { redirect_to requirements_path, notice: "Requisito (#{@requirement.name}) criado com sucesso!" }
        format.json { render :show, status: :created, location: @requirement }
      else
        format.html { render :new }
        format.json { render json: @requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requirements/1
  # PATCH/PUT /requirements/1.json
  def update
    respond_to do |format|
      if @requirement.update(requirement_params)
        format.html { redirect_to requirements_path, notice: "Requisito (#{@requirement.name}) atualizado com sucesso!" }
        format.json { render :show, status: :ok, location: @requirement }
      else
        format.html { render :edit }
        format.json { render json: @requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requirements/1
  # DELETE /requirements/1.json
  def destroy
    @requirement.destroy
    respond_to do |format|
      format.html { redirect_to requirements_url, notice: 'Requirement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def report
    @requirements = Requirement.where(project_id: current_project.id)
    respond_to do |format|
      format.html
      format.pdf do
        pdf = RequirementPdf.new(@requirements)
        send_data pdf.render, filename: "requisitos.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement
      @requirement = Requirement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requirement_params
      puts current_project.id
      params.require(:requirement).permit(:name, :description, :requirement_type)
    end
end
