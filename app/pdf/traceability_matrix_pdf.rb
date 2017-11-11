class TraceabilityMatrixPdf < Prawn::Document
    
    def initialize(usecase, requirement)
        super(top_margin: 70)
        @usecase = usecase
        @requirement = requirement
        list_matriz
        
    end
    
    def list_matriz
        move_down 20
        text "Matriz de Rastreabilidade", size: 15, style: :bold
        move_down 6
        
        requisitos = Array.new
        
         @requirement.each do |requirement| 
            requisitos.append(requirement.name)
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