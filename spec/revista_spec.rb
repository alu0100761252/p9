require 'spec_helper'
require 'b'

describe Revista do
	before :each do
		@Revista = Revista.new("titulo", "editorial", "edicion1", "fecha","issn")
	end
	describe "#new" do
		it "recibe parametros y crea un objeto tipo Revista" do
			@Revista.should be_an_instance_of Revista
		end
		it "Revista hereda de Libro?" do
			@Revista.is_a? Libro
		end
		
		it"instancia de libro" do
			expec(@Revista.instance_of? Libro).to eq false
		end
	end	
end