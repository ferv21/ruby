products = [1,2,3,4] # meu array normal

puts "\n Executando .map multiplicando cada item por 2" # mensagem para ser exibida, o \n quebra 1 linha


#.map não altera o conteúdo do array original , ele apenas nos mostra TODO conteúdo de array
products_list = products.map do |item| # nesse caso eu to atribuindo o valor do array em um variavel dps de multiplicar cada item por 2
    item * 2                           # é como se eu tivesse criando um array, apartir de outro array, multiplicando os valores por 2
end

#products_list = [2,4,6,8]

puts "\n Array Original"
puts "#{products}"
puts "\n Novo Array"
puts "#{products_list}"


# sobreescreve o valor
products.map! do |item| # O .map! força que o conteúdo do array original seja alterado, ou seja vai atualizar o meu array com novos valores, nesse caso todos multiplicados por 2
    item * 2
end

puts "\n Array original"
puts "#{products}"




# Exemplo de anotação

# array = [1,2,3,4] - aqui temos um array normal

# novo_array = array.map do |item| - nesse bloco estamos pegando o array e criando um novo, multiplicando todos os valores por 2
#  item * 2
#end

# Se quisermos manipular o array original usamos diretamente o .map! com uma exclamação no final
# forçando o array a atualizar seus valores

# array.map! do |item| - Esse bloco é o mesmo que o acima, só que atualizando diretamente o array original com novos valores, nesse caso colocando todos os itens x2
# item * 2
#end
