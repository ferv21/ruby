class Animal # a classe que as outras classes vão herdar a gente chama de PAI
    def pular # lembra que os métodos são os 'comportamentos'
        puts 'Toing! toim! boim! poim!'
    end

    def dormir 
        puts 'Zzzzz...'
    end
end

#Herança
class Cachorro < Animal # aqui usando o < (Menor que) eu to dizendo que Cachorro vai herdar os métodos de Animal
    def latir
        puts 'Au Au!'
    end
end

# Assim ao criar o objeto cachorro, eu posso usar tanto os métodos do proprio cachorro
# quanto do Animal eu Cachorro herdou, sendo assim posso usar o método pular, dormir e latir
cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir

# Outro exemplo

class Gato < Animal # herdo novamente a classe animal
    def miar # crio o método para a classe gato
        puts 'Miau miau!'
    end
end

gato = Gato.new # mais uma vez ao criar outro objeto, posso usar os mesmos métodos de Animal
gato.pular
gato.dormir
gato.miar # ao inves de latir, o gato vai miar!