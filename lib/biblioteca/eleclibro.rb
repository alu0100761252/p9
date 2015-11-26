 
 
require 'biblioteca/biblioteca'

class Eleclibro < Libro
	attr_accessor :url
	def initialize(titulo, editorial, nEdicion, fecha,url)
		super(titulo, editorial, nEdicion, fecha)
		@url = url
	end	
end