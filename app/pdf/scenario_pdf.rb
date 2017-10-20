class ScenarioPdf < Prawn::Document
    
    def initialize(scenario)
        super(top_margin: 70)
        @scenario = scenario
        title_scenario
        line_items_scenario("Principal")
        line_items_scenario("Alternativo")
    end
    
    def title_scenario
        text "Cenários", size: 20, style: :bold
    end
    
    def line_items_scenario(tipo)
        @scenario.each do |item|
            if item.scenario_type == tipo
                move_down 20
                text "Cenário " + tipo, size: 15, style: :bold
                text "Nome: " + item.name, size: 12, style: :bold
                text "Descrição: " + item.description, size: 12, style: :bold
               line_items_step_scenario(item.id)
             end
        end
    end
    
    def line_items_step_scenario(id)
        @step_scenarios = StepScenario.where(scenario_id: id)
       
        move_down 5
        
        @step_scenarios.each do |step| 
            text "  " + step.sequence + ". " +  step.description, size: 12
        end
    end
end