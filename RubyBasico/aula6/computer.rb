class Computer # a classe é apenar a planta, ela não faz nada. Eu preciso criar um objeto
    def turn_on
        'turn on the computer!'
    end
    
    def turn_off
        'shutdown the computer!'
    end
end

# Eu preciso criar o objeto para poder interagir com a classe
computer = Computer.new # criando objeto, atribuindo a uma variavél
puts computer.turn_on # dessa forma eu to acessando um método através do meu objeto que criei

# criando outro objeto

desliga_pc = Computer.new 
puts desliga_pc.turn_off # acessando o método turn_off