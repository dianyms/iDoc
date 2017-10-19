class RequirementPdf < Prawn::Document
    
    def initialize(requirement)
        super(top_margin: 70)
        @requirement = requirement
        title
        line_items
    end
    
    def title
        text "Requisitos", size: 20, style: :bold
    end
    
    def line_items
        move_down 20
        
        data = [["Nome", "Descrição", "Tipo"]]
        
        @requirement.each do |item| 
             data += [[item.name, item.description, item.requirement_type]]
        end
           
        table data, :column_widths => [100, 350] do
            row(0).font_style = :bold
            row(0).background_color = "DDDDDD"
            self.header = true
        end
    end
end