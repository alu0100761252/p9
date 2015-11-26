require "biblioteca/version"
class Lista 
      include Enumerable
       
       attr_accessor :valor
      def initialize (valor)
          @cabeza = Nodo.new(nil,valor,nil)
          @fin=Nodo.new(nil,valor,nil)
      end
      
      def anyadir(value)
          current = @cabeza
          while current.nodo_siguiente != nil
                current = current.nodo_siguiente
          end
          current.nodo_siguiente= Nodo.new(current,value,nil)
           @fin=current.siguiente
          previous = @fin
           previous.anterior = current 
          
          
      end
      
      def get_cabeza()
          return @cabeza
      end
      
      def set_cabeza(valor)
          @cabeza = valor
      end
      
      def delete_first()
    	current = @cabeza
    	if current.nodo_siguiente == nil
    		puts "Lista Vacia"
    	else
    		@cabeza = cabeza.nodo_siguiente
    		@current.nodo_siguiente = nil
    	end  
    	
    	
      def delete(valor)
          current = @cabeza
          if current.value == valor
              @head = @head.nodo_siguiente
          else
              current = @head
              while(current != nil) && (current.nodo_siguiente != nil) && ((current.nodo_siguiente).value != valor)
                   current = current.nodo_siguiente
              end
              
              if (current != nil) && (current.nodo_siguiente != nil)
                  current.nodo_siguiente = (current.nodo_siguiente).nodo_siguiente
                  current.anterior = (current.anterior).anterior
              end
          end
      end 
      
     
 
    
 end
 
 def each 
   inicio = @cabeza
   fin = @fin
   while (inicio != fin)
   yield inicio.valor
    
  
   end
      
        
         #current = @cabecera
     #   while (current.siguiente != nil)
      #      yield current
       #     current = current.siguiente
        #end
 
 end
 end