require "b" 
require "version"
class Lista 
      include Enumerable
      attr_accessor :cabeza
      def initialize (valor)
          @cabeza = Nodo.new(nil,valor,nil)
      end
      
      def anyadir(value)
          current = @cabeza
          while current.nodo_siguiente != nil
                current = current.nodo_siguiente
          end
          current.nodo_siguiente= Nodo.new(current,value,nil)
          self
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
              end
          end
      end
      
      
      def display 
          current = @cabeza
          lista_tope = []
          while current.nodo_siguiente != nil
              lista_tope += [current.value.to_s]
              current = current.nodo_siguiente
          end
          lista_tope += [current.value.to_s]
          puts lista_tope.join("-->")
        end
   end
    
 
    
 end