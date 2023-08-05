class Instrumento # criando classe pai
    def escrever # escrevendo o método que ta na classe pai
        puts 'Escrevendo'
    end
end

class Teclado < Instrumento # apenas um exemplo vazio que vai herdar o método padrão do pai "Escrevendo..."
    def escrever
        puts 'tecladoooo...' # vai mostrar um valor diferente no método, mas ainda assim vai mostrar o padrao Escrevendo... pois tem a palavra super, logo abaixo
        super # a palavra super, faz com que eu mostre o valor da classe pai mesmo que eu sobreescreva
    end
end

class Lapis < Instrumento
    def escrever # eu posso reescrever um método da classe pai, apenas preciso escrever ele e mudar seu valor
        puts 'Escrevendo à Lápis'
    end
end

class Caneta < Instrumento
    def escrever # sobreescrevendo método da classe pai
        puts 'Escrevendo à Caneta'
    end
end

# criando objetos
teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

# cada método método escrever vai se comportar de acordo com sua classe
puts "Lápis:"
lapis.escrever
puts "Caneta:"
caneta.escrever
puts "Teclado:"
teclado.escrever

# Então polimorfismo é a capacidade de usar o mesmo método com o mesmo nome, e ter
# comportamentos diferentes em objetos diferentes, nesse caso acima cada método escrever
# vai ter um comportamente diferente, pois foi o que passamos nas classes lapis e caneta
# se todos estiverem programados para reagir de forma diferente, eles irão.