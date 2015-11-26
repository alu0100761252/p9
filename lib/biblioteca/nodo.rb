 
require 'biblioteca/biblioteca'
class Nodo
    attr_accessor :value, :nextt, :nodo_siguiente, :nodo_anterior
    
    def initialize(valor,nextt,siguiente,anterior)
        @value = valor
        @nextt = nextt
        @nodo_siguiente = siguiente
        @nodo_anterior = anterior
        puts "Inicializado Nodo con valor " + value.to_s
    end
        
end