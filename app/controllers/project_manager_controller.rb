class ProjectManagerController < ApplicationController
    layout "project_manager"
    
    def index
    end
    
    def show
        set_project
    end
end
