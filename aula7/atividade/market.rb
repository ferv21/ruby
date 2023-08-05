class Market # criamos a classe market
    def initialize (product) # definimos que ele vai iniciar recebendo o parametro produto
        @product = product # vai armazenar o que foi passado como parametro dentro de @product
    end

    def buy # método que vai mostrar na tela a mensagem contendo os dados que vai ser passado pelas instancias
        puts "Você comprou o produto #{@product.name} com o valor de #{@product.price}"
    end
end