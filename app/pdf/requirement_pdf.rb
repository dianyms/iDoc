class RequirementPdf < Prawn::Document
    
    def initialize(requirement)
        super(top_margin: 70)
        @requirement = requirement
        title_requirement
        line_items_functional
        line_items_nofunctional
        line_items_additional
    end
    
    def title_requirement
        text "Requisitos", size: 20, style: :bold
    end
    
    def line_items_functional
        move_down 20
        text "Requisitos Funcionais", size: 15, style: :bold
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
        move_down 20
        text "Requisitos Não Funcionais", size: 15, style: :bold
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
        move_down 20
        text "Requisitos Suplementares", size: 15, style: :bold
        text "Abrangem todo o sistema.", size: 12
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
end