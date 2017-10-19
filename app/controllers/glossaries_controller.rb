class GlossariesController < ProjectManagerController
  before_action :set_glossary, only: [:show, :edit, :update, :destroy]

  # GET /glossaries
  # GET /glossaries.json
  def index
    @glossaries = Glossary.where(project_id: current_project.id)
  end

  # GET /glossaries/1
  # GET /glossaries/1.json
  def show
  end

  # GET /glossaries/new
  def new
    @glossary = Glossary.new
  end

  # GET /glossaries/1/edit
  def edit
  end

  # POST /glossaries
  # POST /glossaries.json
  def create
    @glossary = Glossary.new(glossary_params)
    @glossary.project_id = current_project.id

    respond_to do |format|
      if @glossary.save
        format.html { redirect_to glossaries_path, notice: "Termo (#{@glossary.term}) cadastrado com sucesso!" }
        format.json { render :show, status: :created, location: @glossary }
      else
        format.html { render :new }
        format.json { render json: @glossary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glossaries/1
  # PATCH/PUT /glossaries/1.json
  def update
    respond_to do |format|
      if @glossary.update(glossary_params)
        format.html { redirect_to glossaries_path, notice: "Termo (#{@glossary.term}) atualizado com sucesso!" }
        format.json { render :show, status: :ok, location: @glossary }
      else
        format.html { render :edit }
        format.json { render json: @glossary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glossaries/1
  # DELETE /glossaries/1.json
  def destroy
    @glossary.destroy
    respond_to do |format|
      format.html { redirect_to glossaries_url, notice: 'Glossary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def report
    @glossaries = Glossary.where(project_id: current_project.id)
    respond_to do |format|
      format.html
      format.pdf do
        pdf = GlossaryPdf.new(@glossaries)
        send_data pdf.render, filename: "glossario.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glossary
      @glossary = Glossary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glossary_params
      params.require(:glossary).permit(:term, :description, :synonymous)
    end
end
