class MainPdf < Prawn::Document
    include GlossaryPdf
    include RequirementPdf
    
    def initialize(glossaries, requirements)
        
    end
end