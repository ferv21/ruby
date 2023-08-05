class Esportista # criando classe pai
    def competir
        puts 'Participando de uma competição' # método da classe pai
    end
end

class JogadorDeFutebol < Esportista # classe que herda da classe pai
    def correr # método correr da classe JogadorDeFutebol
        puts 'Correndo atrás da bola'
    end
end

class Maratonista < Esportista # classe que também herda da classe pai
    def correr # método correr da classe Maratonista
        puts 'Percorrendo um circuito'
    end
end

# Objeto criado herdando a classe esportista e usando polimorfismo no método correr
puts 'Jogador de Futebol'
jogador = JogadorDeFutebol.new
jogador.competir
jogador.correr # Correndo atrás da bola

puts 'Maratonista'
maratonista = Maratonista.new
maratonista.competir
maratonista.correr # Percorrendo um circuito