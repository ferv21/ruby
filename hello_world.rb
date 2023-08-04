class RichPerson
    def money
        100000
    end
end

class PoorPerson
    def money
        1000
    end
end


class Person < RichPerson #dessa forma simples é feita a herança

    #Para pegarmos um atributo como name por exemplo, ao inves de definir ele
    #Podemos usar o attr_reader, em vez de def name.

    #def name
    #   @name
    #end

    attr_reader :name, :age


    #Um pouco abaixo tem um exemplo sobre atribuição de valores, que basta ser substituido pelo attr_writer
    #Nesse caso estamos dizendo que valores podem ser atribuidos na variavel name
    attr_writer :name

    #Podemos fazer essas duas coisas que o reader e o writer fazem, usando o attr_accessor
    attr_accessor :name, :age # = attr_reader e attr_writer

    def initialize(name,age)
        @name = name
        @age = age
    end

    def introduce
        "Olá, meu nome é #{@name} e eu tenhoo #{@age} anos e eu sou um cabaço."
    end

    #Detalhe, esse name= tem que ta COLADO um do lado do outro
  #  def name=(name) #Basicamente eu to dizendo que essa variavel tem um parametro, nesse caso name, entao eu posso atribuir um valor para ela
  #     @name = name
  #  end

    def adult? # a interrogação no final de um def sempre é para retornar um boolean
        @age >= 18
    end
    def adult! # a exclamação no final de um def sempre é para "forçar" a execução
        @age = 22
    end
end