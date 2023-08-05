# Nesse caso não precisamos importar nada de Animal aqui, pois ele já vai estar la no App.rb
# mas se eu mandar executar só esse arquivo aqui herdando de Animal, vai dar erro
class Cachorro < Animal
    def latir
        puts 'Au Au!'
    end
end