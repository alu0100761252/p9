require "spec_helper"
require "b"

describe Libro do
  before :all do 
   
@l1 = Libro.new([' Dave Thomas, Andy Hunt, Chad Fowler.'], " The Pragmatic Programmers’Guide.", "(The facets of Ruby)","Pragmatic Bookshelf","4 edition", "(July 7, 2013)", ['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
@l2= Libro.new(['Scott Chacon'], " Pro Git 2009th Edition. (Pro). Apress;", "(The facets of Ruby)","Pragmatic Bookshelf"," 2009 edition", "((August 27, 2009)", ['ISBN-13: 978-1430218333', ' ISBN-10: 1430218339.'])
@l3 = Libro.new(['David Flanagan, Yukihiro Matsumoto.'], " The Ruby Programming Language. O’Reilly Media;", "(The facets of Ruby)","Pragmatic Bookshelf","1 edition", "((February 4 2008)", [' ISBN-10: 0596516177.', 'ISBN-13: 978-0596516178.'])
@l4  = Libro.new(['David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy'], "  The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)", " PragmaticBookshelf","1 edition", "((December 25, 2010)", [' ISBN-10: 1934356379', 'ISBN-13: 978-1934356371.'])
@l5 = Libro.new(['Richard E. Silverman Git Pocket Guide O’Reilly Media;'],"1 edition", "((August 2, 2013)", [' ISBN-10: 1449325866.', 'ISBN-13: 978-1449325862.'])

#libro1
@l1.set_autor("Dave Thomas")
@l1.set_autor("Andy Hunt")
@l1.set_autor("Chad Fowler")
@l1.set_isbn("ISBN-13: 978-1937785499")
@l1.set_isbn("ISBN-10: 1937785491")


#Libro 2
@l2.set_autor("Scott Chacon")
@l2.set_isbn("ISBN-13: 978- 1430218333")
@l2.set_isbn("ISBN-10: 1430218339")

#libro3 
@l3.set_autor("David Flanagan")
@l3.set_autor("Yukihiro Matsumoto")
@l3.set_autor("Chad Fowler")
@l3.set_isbn("ISBN-13: 978-0596516178")
@l3.set_isbn("ISBN-10: 0596516177")

#libro4
@l4.set_autor("David Chelimsky")
@l4.set_autor("Dave Astels")
@l4.set_autor("Bryan Helmkamp")
@l4.set_autor("Dan North")
@l4.set_autor("Zach Dennis")
@l4.set_autor("Aslak Hellesoy")
@l4.set_isbn("ISBN-13: 978-1934356371")
@l4.set_isbn("ISBN-10: 1934356379")

#libro5

@l5.set_autor("Richard E. Silverman")
@l5.set_isbn("ISBN-13: 978-1449325862")
@l5.set_isbn("ISBN-10: 1449325866")


@Revista1 = Revista.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)","Pragmatic Bookshelf", "1 edition", "December 25, 2010","12345678")
@Revista2 = Revista.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)","Pragmatic Bookshelf", "1 edition", "December 25, 2010","http://www.amazon.es/The-RSpec-Book-Behaviour-Development/dp/1934356379")

@Node1 = Nodo.new(nil,@Revista1,nil)
@Node2 = Nodo.new(@node1,@Revista2,nil)
@Lista =  Lista.new(@Node)


describe "#new" do
		it "recibe parametros y crea un objeto tipo Node" do
			@Lista.should be_an_instance_of Lista
		end
	end
	describe "#add" do
		it "inserta un elemento en la LinkedList" do 
			@Lista.anyadir(@Node2)
			@Lista.should be_true
		end
	end
	describe "#delete" do
		it "borra un valor en la lista especificado por parametro" do
			@Lista.delete(@Node2)
			@Lista.should be_true
		end
		it "borra el primer elemento de la lista" do
			@Lista.delete_first()
			@Lista.should be_true
		end
	end
 

describe Nodo do
    before :each do
@ll1 = Nodo.new(nil,@l1,@l2)
@ll2 = Nodo.new(@l1,@l2,@l3)
@ll3 = Nodo.new(@l2,nil,@l4)
@ll4 = Nodo.new(@l3,nil,@l5)
@ll5 = Nodo.new(@l4,nil,nil)
 end
 describe "#new" do
		it "recibe parametros y crea un objeto tipo Node" do
			@Node.should be_an_instance_of Nodo
		end
	end

 
 describe Lista do
     before :all do

@lista = Lista.new(@ll1)

end 
 describe "#Creada lista " do
    it "Buen almacenamiento de la lista" do 
     @lista.should be_an_instance_of Lista 
     
     
     
     describe "#Añadir nodo1" do
    it "Debe poderse añadorr un elemento de la lista" do
      @lista.anyadir(@ll1)
      @lista.should_be true 
    end
   end 
   


describe "#Añadir nodo2" do
    it "Debe poderse añadorr un elemento de la lista" do
      @lista.anyadir(@ll2)
      @lista.should_be true 
    end
   end 
   
describe "#Añadir nodo3" do
    it "Debe poderse añadir un elemento de la lista" do
      @lista.anyadir(@ll3)
      @lista.should_be true 
    end
   end 
   
describe "#Añadir nodo4" do
    it "Debe poderse añadir un elemento de la lista" do
      @lista.anyadir(@ll4)
      @lista.should_be true 
    end
   end 
   
   
 describe "#Añadir nodo5" do
    it "Debe poderse añadir un elemento de la lista" do
      @lista.anyadir(@ll5)
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
      @lista.delete(@ll1)
      @lista.should_be true
      
    end
   end 
   
   describe "#Añadir nodo2" do
    it "Debe poderse añadorr un elemento de la lista" do
      @ll1.should be_an_instance_of Nodo
      @ll1.should_be true 
    end
   end  
   
   
   
 end
 
 end
 
 end
 
 end
 
 end
 end