class ProjectManagerController < ApplicationController
    layout "project_manager"
    before_action :authorize
    
    def authorize
     unless logged_in?
       redirect_to root_url
     end
    end
    
    def index
        @glossaries = Glossary.where(project_id: current_project.id)
        @requirements = Requirement.where(project_id: current_project.id)
        @use_cases = UseCase.where(project_id: current_project.id)
    end
    
    def show
        set_project
        @glossaries = Glossary.where(project_id: current_project.id)
        @requirements = Requirement.where(project_id: current_project.id)
        @use_cases = UseCase.where(project_id: current_project.id)
        @reviews = Review.where(project_id: current_project.id)
    end
    
    def report_all
        
    @glossaries = Glossary.where(project_id: current_project.id)
    @requirements = Requirement.where(project_id: current_project.id)
    @use_cases = UseCase.where(project_id: current_project.id)
    @reviews = Review.where(project_id: current_project.id)
      
      respond_to do |format|
      format.html
      format.pdf do
        pdf = ReportAllPdf.new(@glossaries, @requirements, @use_cases, @reviews, current_user)
        send_data pdf.render, filename: "relatório.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
    end
end
