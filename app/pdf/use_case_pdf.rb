class UseCasePdf < Prawn::Document
    
    def initialize(usecase)
        super(top_margin: 70)
        @usecase = usecase
        
        @usecase.each do |casouso|
            text "Caso de Uso " + casouso.name, size: 20, style: :bold, align: :center
            move_down 10
            text "1. Descrição Resumida do Caso de Uso", size: 15, style: :bold
            text casouso.description
            
            @actor = Actor.where(use_case: casouso.id)
            line_items_actor
            
            @scenario = Scenario.where(use_case: casouso.id)
            line_items_scenario("Principal")
            line_items_scenario("Alternativo")
            
        end
    end
    
    def line_items_actor
        
        move_down 20
        text "2. Descrição Resumida dos Atores", size: 15, style: :bold
         @actor.each do |item|
             move_down 5
             text "Ator " + item.name
         end
        
    end
    
    def line_items_scenario(tipo)
        @scenario.each do |item|
            if item.scenario_type == tipo
                move_down 20
                text "3. Cenário " + tipo, size: 15, style: :bold
                text "Nome: " + item.name, size: 13, style: :bold
                text "Descrição: " + item.description, size: 13, style: :bold
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