class User # criamos nossa classe pai
    @@user_count = 0 # criamos nossa variavel de classe @@
    def add (name) # criamos nosso método add, que recebe um name como parametro
        puts "User #{name} adicionado" # Mostramos que o nome adicionado no parametro foi adicionado
        @@user_count += 1 # incrementamos a nossa variavel de classe com + 1 usuario
        puts @@user_count # mostramos a quantidade de usuários atraves da variavel de classe
    end
end

first_user = User.new # criando a instância primeiro usuario
first_user.add('João') # usando o método .add que recebe o parametro name, nesse caso João!

second_user = User.new # criando a instância segundo usuário
second_user.add('Gabi') # usando o método .add que recebe o parâmetro name, nesse caso Gabi!

# Mesmo sendo instancias diferentes o valor da variavel @@user_count continua crescendo
# É COMPARTILHADA ENTRE TODAS AS INSTANCIAS