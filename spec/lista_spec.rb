require "spec_helper"
require "b"
require "biblioteca/lista"

describe Lista do
  before :each do 
   
@l1 = Libro.new([' Dave Thomas, Andy Hunt, Chad Fowler.'], " The Pragmatic Programmers’Guide.", "(The facets of Ruby)","Pragmatic Bookshelf","4 edition", "(July 7, 2013)", ['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
@l2= Libro.new(['Scott Chacon'], " Pro Git 2009th Edition. (Pro). Apress;", "(The facets of Ruby)","Pragmatic Bookshelf"," 2009 edition", "((August 27, 2009)", ['ISBN-13: 978-1430218333', ' ISBN-10: 1430218339.'])
  
@listaa = Lista.new(@l1)
 

@revista1 = Revista.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)","Pragmatic Bookshelf", "1 edition", "December 25, 2010","12345678")
@revista2 = Revista.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)","Pragmatic Bookshelf", "1 edition", "December 25, 2010","http://www.amazon.es/The-RSpec-Book-Behaviour-Development/dp/1934356379") 
 
  @libro1=Referencias.new("Mi cumpleaños",
								"21-09-1994",
								"tenerife",
								"mi casa",
								"primera vida",
								"mi volumen")
		@libro1.set_autor("pepe","Barreto")
		@libro1.set_autor("Juan","Vicente")
		@libro1.set_autor("Maria","Isabel")
		@libro2=Referencias.new("Mi cumpleaños2",
								"31-09-1994",
								"tenerife",
								"mi casa",
								"segunda vida",
								"mi volumen 2")
		@libro2.set_autor("juan","Barreto")
		@libro2.set_autor("Juan","Vicente")
		@libro2.set_autor("Maria","Isabel")
		@libro2.poner_APA
		@Node1 = Node.new(nil,@Libro1,nil)
		@Node2 = Node.new(@node1,@Libro2,nil)
		@List = Lista.new(@Node1)
 describe "Creada lista " do
    it "Buen almacenamiento de la lista" do 
     @lista.should be_an_instance_of Lista 
     
    end
end
     
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
    
    describe "Lista Enumerable" do
        it"comprobando any? " do
            expect(@listaa.any?).to eq(false)
        end 
        it" comprobando count" do
            expect(@listaa.count).to eq(2)  
        end
         it "comprobrando el metodo all? con un bloque vacio" do
             expect(@listaa.all?).to eq(true)
             expect(@listaa.all?).to eq(false)
             
  
    end 
        
    end
    
   describe "PRACTICA 10"do
      	it "Comprueba que esta en formato APA" do
			expect(@libro1.get_APA()).should eql ("Barreto.pepe,Vicente.Juan,Isabel.Maria,(21-09-1994). Mi cumpleaños. (primera vida) (mi volumen). tenerife: mi casa")
		end
   end
   
    
 

    
   
  
  
