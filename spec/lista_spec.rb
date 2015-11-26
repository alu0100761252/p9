require "spec_helper"
require "b"

describe Lista do
  before :each do 
   
@l1 = Libro.new([' Dave Thomas, Andy Hunt, Chad Fowler.'], " The Pragmatic Programmers’Guide.", "(The facets of Ruby)","Pragmatic Bookshelf","4 edition", "(July 7, 2013)", ['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
@l2= Libro.new(['Scott Chacon'], " Pro Git 2009th Edition. (Pro). Apress;", "(The facets of Ruby)","Pragmatic Bookshelf"," 2009 edition", "((August 27, 2009)", ['ISBN-13: 978-1430218333', ' ISBN-10: 1430218339.'])
 


@lista =  Lista.new(@l1)
 

@revista1 = Revista.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)","Pragmatic Bookshelf", "1 edition", "December 25, 2010","12345678")
@revista2 = Revista.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)","Pragmatic Bookshelf", "1 edition", "December 25, 2010","http://www.amazon.es/The-RSpec-Book-Behaviour-Development/dp/1934356379") 
 
 
		it "borra el primer elemento de la lista" do
			@lista.delete_first()
			@lista.should be_true
		end
	end
  
end 
 describe "Creada lista " do
    it "Buen almacenamiento de la lista" do 
     @lista.should be_an_instance_of Lista 
     
     
     
     describe "#Añadir 1" do
    it "Debe poderse añadorr un elemento de la lista" do
      @lista.anyadir(@l1)
      @lista.anyadir(@l2)
      @lista.should_be true 
    end
   end  
 
   
   describe "#Clase lista" do
    it "Debe poderse añadir un elemento de la lista" do
      @l1.anyadir().length.should be > 0
    end
   end 
   
   describe "#Eliminar nodo" do
    it "Debe poderse eliminar un elemento de la lista" do
      @lista.delete(@l1)
      @lista.should_be true
      
    end
   end  
   
 end
 
 end 
    describe "Enumerable" do
        it"comprobando any?" do
            expect(@lista.any?).to eq(true)
             
        end
        it "Comprobando count" do
            expect(@lista.count).to eq(2) 
        end
    end
    
   
  
  
