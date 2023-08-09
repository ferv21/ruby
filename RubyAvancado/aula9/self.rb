class Foo # criando classe
 def bar # criando método
    puts self
 end
end

foo = Foo.new # criando instancia de Foo
puts foo # imprimindo a instancia
foo.bar # chamando o método bar


class Fuu 
 def self.cee # basicamente ao utilizar o self, eu posso chamar um método diretamente da classe sem criar uma instancia
    puts self
 end
end
# é como se eu tivesse criando um método de classe, ao inves de ter que criar uma instancia
Fuu.cee 

puts 'Classe pen'

class Pen # aqui temos a classe 
    attr_accessor :color # aqui nós temos a função do ruby que faz automaticamente o getter e o setter. Nesse caso de color. Ou seja ele pode receber um atributo e também pode reescreve-lo
    def pen_color
        puts "The color is " + self.color # aqui o self tem o mesmo acesso que a instancia tem, ou seja a variavel color, que é blue
    end
end

pen = Pen.new
pen.color = "blue" # dessa forma com o attr_accessor eu posso ler e escrever o valor do atributo, nesse caso passando o blue que vai ser recebido por uma variavel de instancia e pode ser chamado depois
pen.pen_color   

class Pessoa
    attr_accessor :nome
  
    def initialize(nome)
      @nome = nome
    end
  end
  
  pessoa = Pessoa.new("João")
  puts pessoa.nome     # Usando o getter para obter o valor do atributo "nome"
  pessoa.nome = "Maria" # Usando o setter para definir um novo valor para o atributo "nome"

# entao basicamente o getter eu uso o pessoa.nome, 
#oq ja me daria o valor dela que eu passei no initialize, 
#e o setter seria o pessoa.nome = 'novo nome', 
# que eu atribuiria um novo valor para minha variavel @nome