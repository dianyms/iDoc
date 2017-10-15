module ScenariosHelper
     # Use callbacks to share common setup or constraints between actions.
    def set_current_scenario
      puts "SEEEEEEEEEET CURRENT SCENARIO"
      session[:scenario_id] = [params[:id]]
       
    end
    
    def current_scenario
      @current_scenario ||= Scenario.find_by id: (session[:scenario_id])
    end
end
