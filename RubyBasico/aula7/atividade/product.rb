class Product # criamos uma classe que vai iniciar recebendo no initialize name e price
    def initialize(name,price)
        @name = name
        @price = price
    end

    def name # mostrar o name quando chamarmos o método .name, mostrando o valor que recebemos como parametro
        @name
    end

    def price # mostrar o price quando chamarmos o método .price, mostrando o valor do parametro
        @price
    end
end

