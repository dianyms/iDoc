class UseCasesController < ProjectManagerController
  before_action :set_use_case, only: [:show, :edit, :update, :destroy]

  # GET /use_cases
  # GET /use_cases.json
  def index
    @use_cases = UseCase.all
  end

  # GET /use_cases/1
  # GET /use_cases/1.json
  def show
  end

  # GET /use_cases/new
  def new
    @requirement_options_select = Requirement.all
    @use_case = UseCase.new
  end

  # GET /use_cases/1/edit
  def edit
    @requirement_options_select = Requirement.all
  end

  # POST /use_cases
  # POST /use_cases.json
  def create
    @use_case = UseCase.new(use_case_params)
    @use_case.project_id = current_project.id

    respond_to do |format|
      puts "AAAAAAAAANTES DO IF"
      if @use_case.save
        puts "IIIIIIIIIIIIIIIIF"
        format.html { redirect_to @use_case, notice: 'Use case was successfully created.' }
        format.json { render :show, status: :created, location: @use_case }
      else
        puts "EEEEEEEEEEEEEEELSE"
        format.html { render :new }
        format.json { render json: @use_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /use_cases/1
  # PATCH/PUT /use_cases/1.json
  def update
    respond_to do |format|
      if @use_case.update(use_case_params)
        format.html { redirect_to @use_case, notice: 'Use case was successfully updated.' }
        format.json { render :show, status: :ok, location: @use_case }
      else
        format.html { render :edit }
        format.json { render json: @use_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /use_cases/1
  # DELETE /use_cases/1.json
  def destroy
    @use_case.destroy
    respond_to do |format|
      format.html { redirect_to use_cases_url, notice: 'Use case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_use_case
      @use_case = UseCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def use_case_params
      params.require(:use_case).permit(:name, :description, :requirement_id)
    end
end
