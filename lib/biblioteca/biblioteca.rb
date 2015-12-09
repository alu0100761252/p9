class Libro
    include Comparable
    attr_accessor :autores, :titulo, :serie, :editorial, :edicion, :fecha, :isbn 
    
    def initialize(autores, titulo, serie, editorial, edicion, fecha, isbn)
        @autores=autores
        @titulo=titulo
        @serie=serie
        @editorial=editorial
        @edicion=edicion
        @fecha=fecha
        @isbn=isbn
    end
    
    def get_autores
       @autores 
    end
    
    def get_titulo
        @titulo
    end
    
    def get_serie
        @serie
    end
    
    def get_editorial
        @editorial
    end
    
    def get_edicion
        @edicion
    end
    
    def get_fecha
        @fecha
    end
    
    def get_isbn
        @isbn
    end
    
    def to_s
        puts "Autor/es: #{@autores}"
        puts "Titulo: #{@titulo}"
        puts "Serie: #{@serie}"
        puts "Editorial: #{@editorial}"
        puts "Edicion: #{@edicion}, fecha #{@fecha}"
        puts "ISBN:#{@isbn}"
    end
    
    def <=>(other)
          return nil unless other.instance_of? Libro
          @titulo <=> other.titulo
    end
    
    def to_s
       x = ""
       @autores.each do |i|
          if i == @autores.last then
            x << i 
          else 
            x << i << "," << " "
          end
       end   
       
       y = ""
       @isbn.each do |i|
          if i == @isbn.last then
            y << i 
          else 
            y << i << "," << " "
          end
       end  
 
      
	   if @serie != nil then 
	  	  "\n Autores: #{x}\n Título: #{@titulo}\n Serie: #{@serie}\n Editorial: #{@editorial}\n Edición: #{@edicion}\n Fecha: #{@fecha}\n Código: #{y}"
	    else
	      "\n Autores: #{x}\n Título: #{@titulo}\n Editorial: #{@editorial}\n Edición: #{@edicion}\n Fecha: #{@fecha}\n Código: #{y}"
	   end
	    
    end

    
   
end