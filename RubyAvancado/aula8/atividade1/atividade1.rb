names = -> (name) do # criando a lambda
    puts "Olá #{name.capitalize}" # usando método capitalize para deixar a primeira letra maiuscula
end

my_names = names # armazenando a lambda dentro dessa variavel, para passar como parametro

def capitalize_name (name_to_capitalize) # definindo o método capitalize_name para receber um parametro
    name_to_capitalize.call('fer') # chamando a lambda que eu receber como paramentro
    name_to_capitalize.call('anne') # chamando novamente e passando o parametro da lambda
end

capitalize_name(my_names) # chamando o método e passando como parametro a lambda la do inicio.
