class Fish # criando uma classe
    def method_missing(method_name) # definindo o método que vai ser chamado, caso não exista um correspondente.
        puts "Fish don't have #{method_name} bahavior"
    end

    def swim
        puts 'Fish is swimming'
    end
end

fish = Fish.new
fish.swim
fish.walk # como esse método não existe, ao definir o method_missing, ele vai ser chamado no lugar
# o proprio ruby chama o método se ele n for encontrado basicamente.    