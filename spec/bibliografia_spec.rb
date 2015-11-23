require "spec_helper"
require "biblioteca/bibliografia" 
require "b"

describe Libro do
    before :each do 
            @p1=Libro.new(['Dave Thomas','Andy Hunt','Chad Fowler'], "Programming Ruby 1.9&2.0:The pragmatic programmers'  Guide", "(The facets of Ruby)","Pragmatic Bookshelf","4 edition", "(July 7, 2013)", ['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        end
end

describe "# almacenamiento de libros" do
    it "Se almacena bien los autores" do
        @p1.get_autores.length.should_not be 0
        @p1.get_titulo.lenght.to be > 0
        @p1.get_serie.length.to be >= 0
        @p1.get_editorial.length.to be > 0
        @p1.get_edicion.length.to be > 0
        @p1.get_fecha.lengh.to be > 0
        
        @p1.get_isbn.length.should_not be 0

    end
end