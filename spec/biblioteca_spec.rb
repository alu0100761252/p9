require "b"
require "spec_helper"

describe Libro do
    before :each do 
            @libro1 = Libro.new(['Dave Thomas','Andy Hunt','Chad Fowler'], "Programming Ruby 1.9&2.0:The pragmatic programmers'  Guide", "(The facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
            @libro2 = Libro.new(['Scott Chacon'], "Pro Git 2009th Edition", "(Pro)","Apress", "2009 edition", "August 27, 2009",['ISBN-13: 978-1430218333','ISBN-10: 1430218339'] )
            @libro3 = Libro.new(['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'] , "The Rspec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "(The Facets of Ruby)", "Pragmatic Bookshelf", "1 edition", "July 7, 2013", ['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        end


    describe "Herencia" do
        it "Se ha creado el libro" do
            expect(@libro1.instance_of?Libro).to eq true
        end
        it "Un libro es un objeto" do
            expect(@libro1.is_a?Object).to eq true
        end
    end
    
    context "Comparable" do
        it "Libro1 > Libro2, según el tamaño del titulo si es mas grande" do
            expect(@libro1 > @libro2).to eq(true)
        end
        it "Libro2 < Libro4,según el tamaño del titulo si es mas grande"do
            expect(@libro2 < @libro3).to eq(true)
        end
         it "Libro 1 y 2 son diferentes" do
      expect(@libro1 == @libro2).to eq(false)
    end
    end
end