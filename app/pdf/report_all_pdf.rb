class ReportAllPdf < Prawn::Document
    
    def initialize(glossaries, requirement, usecase, reviews, current_user)
        super(top_margin: 70)
        @cont = 1
        @glossary = glossaries
        @usecase = usecase
        @requirement = requirement
        @review = reviews
        @user = current_user
        
        report_reviews
        report_glossary
        report_requirements
        report_use_case
        report_matriz
    end
    
    def title(name)
        move_down 40
        text name, size: 15, style: :bold
        move_down 6
    end
    
    def report_glossary
        
        title("Glossário")
        data = [["Termo", "Descrição", "Sinônimo"]]
        
        @glossary.each do |item| 
             data += [[item.term, item.description, item.synonymous]]
        end
           
        table data, :column_widths => [120, 250, 120] do
            row(0).font_style = :bold
            row(0).background_color = "DDDDDD"
            self.header = true
        end
    end
    
    def report_reviews
        
        title("Histórico de Revisões")
        data = [["Data", "Versão", "Descrição", "Autor"]]
        
        @review.each do |item| 
            data += [[item.data_review.strftime("%m/%d/%Y"), item.version, item.description, @user.name]]
        end
           
        table data, :column_widths => [90, 80, 180, 160] do
            row(0).font_style = :bold
            row(0).background_color = "DDDDDD"
            self.header = true
        end
    end
    
    def report_requirements
        line_items_functional
        line_items_nofunctional
        line_items_additional
    end
    
    def line_items_functional
        title("Requisitos Funcionais")
        text "Estabelecem como o sistema vai agir, e o que deve fazer, as funcionalidades e serviços do sistema, 
        devendo ser descritos detalhadamente.", size: 12
        move_down 6
        
        data = [["Nome", "Descrição"]]
        
        @requirement.each do |item| 
            if item.requirement_type == "Funcional" 
                data += [[item.name, item.description]]
            end
        end
           
        table data, :column_widths => [100, 350] do
            row(0).font_style = :bold
            row(0).background_color = "DDDDDD"
            self.header = true
        end
    end
    
    def line_items_nofunctional
        title("Requisitos Não Funcionais")
        text "Definem as propriedades do sistema e suas restrições.", size: 12
        move_down 6
        
        data = [["Nome", "Descrição"]]
        
        @requirement.each do |item| 
            if item.requirement_type == "Não Funcional" 
                data += [[item.name, item.description]]
            end
        end
           
        table data, :column_widths => [100, 350] do
            row(0).font_style = :bold
            row(0).background_color = "DDDDDD"
            self.header = true
        end
    end
    
    def line_items_additional
        title("Requisitos Suplementares")
        text "Abrangem todo o sistema.", size: 12
        move_down 6
        
        data = [["Nome", "Descrição"]]
        
        @requirement.each do |item| 
            if item.requirement_type == "Suplementar" 
                data += [[item.name, item.description]]
            end
        end
           
        table data, :column_widths => [100, 350] do
            row(0).font_style = :bold
            row(0).background_color = "DDDDDD"
            self.header = true
        end
    end
    
    def report_use_case
        title("Descrição Resumida dos Casos de Uso")
        
        @usecase.each do |casouso|
            title @cont.to_s + (". " + casouso.name)
            
            text casouso.description, size: 12
            
            @actor = Actor.where(use_case: casouso.id)
            line_items_actor
            
            @scenario = Scenario.where(use_case: casouso.id)
            line_items_scenario("Principal")
            line_items_scenario("Alternativo")
            @cont += 1
        end
    end
    
    def line_items_actor
        
        move_down 20
        text @cont.to_s + ".2. Descrição Resumida dos Atores", size: 13, style: :bold
         @actor.each do |item|
             move_down 5
             text "Ator " + item.name
         end
        
    end
    
    def line_items_scenario(tipo)
        @scenario.each do |item|
            if item.scenario_type == tipo
                move_down 20
                text ".3. Cenário " + tipo, size: 13, style: :bold
                text  item.description, size: 12, style: :bold
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
    
    def report_matriz
        move_down 20
        text "Matriz de Rastreabilidade", size: 15, style: :bold
        move_down 6
        
        requisitos = Array.new
        
         @requirement.each do |requirement| 
             if(requirement.requirement_type == "Funcional")
                requisitos.append(requirement.name)
            end
        end
        
        data = [["  ", *requisitos]]
        
        @usecase.each do |usecase| 
            matriz = Array.new
            
            requisitos.each do |requisito|
                if (usecase.requirement.name == requisito)
                    matriz.append("X")
                else
                    matriz.append(" ")
                end
            end

            data += [[usecase.name, *matriz]]
        end
           
        table data, :cell_style => { :align => :center } do
            row(0).font_style = :bold
            row(0).background_color = "DDDDDD"
            self.header = true
        end
        
    end
end