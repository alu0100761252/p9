require 'version'
require 'biblioteca'

class Revista < Libro
	attr_accessor :issn
	def initialize(titulo, editorial, nEdicion, fecha,issn)
		super(titulo, editorial, nEdicion, fecha)
		@issn = issn
	end	
end