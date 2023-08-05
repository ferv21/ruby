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