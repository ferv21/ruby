def compare(a, b) # aqui eu passo dois parametros
    a > b # comparo pra ver se o a é maior que b, vai retornar true ou false
end

# aqui eu passo os valores correspondentes ao A e B da função compare. no caso 1 = a e 2 = b
result = compare(1, 2) # chamando a função e armazenando o resultado true ou false na variavel result

puts "O resultado da comparação é #{result}!" # o resultado da comparação é false, pois 1 não é maior que 2


def retorno
    return 12 # ao usar o return dentro da função, ao chamar ela, vai mostrar exatamente o que ta no return 
    "Hello" # se não tiver return , vai me mostar a ultima coisa que há na função, nesse caso o "Hello"
end

puts retorno