def base_expoente (base, expoente) # criando um metodo que recebe 2 parametros
    return base ** expoente # a base é o numero e o expoente é quatidade elevada nesse numero
end

# peço pro usuario digitar a base e o expoente e armazeno a resposta dele
print ("Digite a base: ")
num_base = gets.chomp.to_i
print ("Digite o expoente: ")
num_expoente = gets.chomp.to_i


# armazeno na variavel result a operação chamando o método e colocando os valores que o usuario
# digitou, como parametro para o método, entao o que ele digitar, vai ser passado para o método
# fazer a operação.
result = base_expoente(num_base, num_expoente)

# mostro o resultado da operação
puts result