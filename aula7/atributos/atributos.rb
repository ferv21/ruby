# MANEIRA ARCAICA DE FAZER 

class Dog # criando minha classe pai
    def name
        @name # nesse método eu vou apenas ler a variavel @name
    end
    #preenchendo variavel de instancia
    def name= name # nesse método eu vou atribuir um valor a variavel atraves desse parametro
        @name = name # atribuindo o parametro recebido a variavel @name
    end
end

dog = Dog.new
dog.name = 'Marlon' #Quem é Marlon porra KKKKKKKKKKKKKKKKKKKKK
puts dog.name

#MANEIRA RUBY <3 DE FAZER

class Dog
    # atributo acessor, eu passo o nome dos atributos que eu quero que minha classe tenha.
    attr_accessor :name, :age
end

#eu vou poder chamar ele exatamente igual ali em cima
dog = Dog.new
dog.name = 'Rodolfo'
puts dog.name

dog.age = '1 ano'
puts dog.age



# Basicamente eu crio minha classe e informo os atributos que eu quero que ela receba
class Person
    attr_accessor :name, :last_name # aqui eu quero que quando eu crie uma instacia, ela possa receber nome e sobrenome
end

pessoa =  Person.new 
pessoa.name = 'Fernando' # atribuindo Fernando ao atributo attr_accessor :name
pessoa.last_name = 'Viana' # atribuindo Viana ao atributo attr_accessor :last_name
puts "Olá #{pessoa.name} #{pessoa.last_name}" # mostro na tela os valores da minha instancia