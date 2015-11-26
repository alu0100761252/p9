 
require 'biblioteca/biblioteca'

class Revista < Libro
	attr_accessor :issn
	def initialize(autores, titulo, serie, editorial, edicion, fecha, issn)
		super(autores, titulo, serie, editorial, edicion, fecha, issn)
		@issn = issn
	end	
end