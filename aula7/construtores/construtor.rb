class Person
                  #Joao  #35
    def initialize(name, age) # passando parametros iniciais
        @name = name
        @age = age
    end

    def check
        puts "Instância da classe iniciada com os valores: "
        puts "Name = #{@name}" # dessa forma aqui vai ser chamado Joao
        puts "Idade = #{@age}" # e aqui vai ser chamado o 35 , assim que eu chamar o método check
    end
end

person = Person.new('João', 35) # ao criar a instancia eu passo os parametros iniciais
person.check