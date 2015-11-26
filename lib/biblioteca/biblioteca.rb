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
        @feha
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
    
    def each
        yield @autores
        yield @titulo
        yield @serie
        yield @editorial
        yield @edicion
        yield @fecha
        yield @isbn
    end
end