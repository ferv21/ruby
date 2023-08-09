class Carro # criando a classe
    def get_km(km) # definindo o método public que recebe um parametro
        puts "Um fusca de cor amarela viaja a:"
        find_km(km) #método privado que recebe como parametro o mesmo que for passado para get_km
    end

    private # criando método privado
    def find_km(km_h) # o método privado tbm recebe um parametro
        km_find = /\d{2}km\/hr/.match(km_h) # faço o regex no parametro
        puts km_find # imprimo o resultado
    end
end

pegando_km = Carro.new # criando a instancia da classe
pegando_km.get_km('80km/hr') # chamo o método publico no qual tem um método private dentro
