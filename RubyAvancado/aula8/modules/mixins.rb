module ImpressaoDecorada
    def imprimir text
        decoracao = '#' * 100
        puts decoracao
        puts text
        puts decoracao
    end
end

module Pernas
    include ImpressaoDecorada # dessa forma eu to herdando o module ImpressaoDecorada

    def chute_frontal
        imprimir 'Chute Frontal' # e aqui eu posso chamar o método do module que eu herdei
    end

    def chute_lateral
        imprimir 'Chute Lateral'
    end
end

module Bracos
    include ImpressaoDecorada

    def jab_de_direita
        imprimir 'Jab de direita'
    end

    def jab_de_esquerda
        imprimir 'Jab de esquerda'
    end

    def gancho
        imprimir 'Gancho'
    end
end

class LutadorX
    include Pernas # tbm posso incluir aqui em uma classe o meu proprio método
    include Bracos # é como se eu tivesse colocando o modulo com os métodos, aqui dentro da classe usando o include
end

class LutadorY
    include Pernas
end

lutadorx = LutadorX.new # Aqui eu crio minha instancia do LutadorX
lutadorx.chute_frontal # e dessa forma eu posso chamar o método chute_frontal que está no module Perna, esse método faz com que chame o imprimir que está no primeiro módulo, mas eu posso utilizar ele com o include, é como se eu colocasse um module dentro de outro module, e dps colocasse na class e usasse o método criando uma instacia dessa class
lutadorx.jab_de_direita

# Quando eu criar uma instacia da class lutadorY, eu posso usar os métodos que tiverem dentro do module Perna, com o include
lutadory = LutadorY.new
lutadory.chute_lateral
lutadory.imprimir('Imprimir do module Impressao decorada')  

#Isso são mixins