class GlossaryPdf < Prawn::Document
    
    def initialize(glossaries)
        super(top_margin: 70)
        @glossary = glossaries
        title_glossary
        line_items_glossary
    end
    
    def title_glossary
        text "Glossário", size: 20, style: :bold
    end
    
    def line_items_glossary
        move_down 20
        
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
end