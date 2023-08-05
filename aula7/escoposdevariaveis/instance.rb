class User # criando classe pai
    attr_reader :name
    def add(name) # criando método add que recebe o parametro name
        @name = name # atribuindo a variavel de instancia @name o name que eu vou receber pelo parametro
        puts "User adicionado"
        hello
    end

    def hello
        puts "Seja bem vindo, #{name}!" # posso acessar a variavel dentro de outro método
    end
end

user = User.new
user.add('João')

#É importante notar que as variáveis de instância pertencem apenas a uma instância específica da classe.

# Quando eu criar uma instancia, eu posso acessar a minha variavel @name dentro dessa nova instancia e atribuir o valor que eu quiser