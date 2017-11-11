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
    end
end
