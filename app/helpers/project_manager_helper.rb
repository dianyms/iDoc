module ProjectManagerHelper
    
     # Use callbacks to share common setup or constraints between actions.
    def set_project
      session[:project_manager_id] = [params[:id]]
       
    end
    
    def current_project
      @current_project ||= Project.find_by id: (session[:project_manager_id])
    end
end
