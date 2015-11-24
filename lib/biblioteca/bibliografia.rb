require 'b'

class Libro
   include Comparable
   attr_reader :autores, :titulo, :serie, :editorial, :edicion, :fecha, :isbn 
   attr_writer :autores, :titulo, :serie, :editorial, :edicion, :fecha, :isbn
   
  attr :str
  def <=>(anOther)
    str.size <=> anOther.str.size 
  end
  def inspect
    @str
  end 
  
    def initialize(autores, titulo, serie, editorial, edicion, fecha, isbn,str)
        @str = str
        @autores=autores
        @titulo=titulo
        @serie=serie
        @editorial=editorial
        @edicion=edicion
        @fecha=fecha
        @isbn=isbn
    end
    
    
    
     def each
        @autores.each{|autores| yield autores}
     end
     def each
        @titulos.each{|titulos| yield tituloss}
     end
     def each
        @serie.each{|serie| yield serie}
     end
     def each
        @editorial.each{|editorial| yield editorial}
     end
     def each
        @edicion.each{|edicion| yield edicion}
     end
     def each
        @fecha.each{|fecha| yield editorial}
     end
     def each
        @isbn.each{|editorial| yield editorial}
     end
     def each
        @str.each{|str| yield str}
     end
     
     
     
     
    
    def get_autores
       @autores 
    end
    
    def set_autor(autor)
			@autor.push autor
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
    
    def set_isbn(digito)
			@isbn.push digito

    
    def to_s
        puts "Autor/es: #{@autores}"
        puts "Titulo: #{@titulo}"
        puts "Serie: #{@serie}"
        puts "Editorial: #{@editorial}"
        puts "Edicion: #{@edicion}, fecha #{@fecha}"
        puts "ISBN:#{@isbn}"
    end
end
end