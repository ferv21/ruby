armas_wr = [] # array vazio

armas_wr.push('Machado') # o método push serve para adicionar algo no final de um array

armas_wr.insert(0, 'Lança') # o método insert adiciona algo no array em qualquer posição ({posiçao do array}, conteudo do array)

#eu posso acessar os dados do array de acordo com a posição

armas_wr[0] = "Machados Duplos" # no inicio Machado estava na posição 0, agora eu acessei e mudei o valor dele para machados duplos

#tambem posso chamar os valores pelos intervalos, exemplo 1..2 (posição 1 até  a posição 2)

armas_wr[1..2]

#podemos pegar valores de tras pra frente também

armas_wr[-1] #posição 1 de tras pra frente,serve com intervalos tbm tipo -1..-2, sem contar que o primeiro item de tras pra frente é o -1 , pois nao podemos colocar -0

#para pegar o primeiro item de um array, alem de array[0], usamos o metodo .first
armas_wr.first

#paga pegar o ultimo item, usamos o .last

armas_wr.last

#para eu saber quando itens tem em um array eu uso o método length
armas_wr.length

#para verificar se existe um item especifico no array, usamos o include?

armas_wr.include?('Punho') #verifico se tem a string Punho no array de armas_wr, retorna true ou false

#podemos tambem verificar se o array está vazio com o empty?

armas_wr.empty? #nesse caso vai retornar um boolean, false, pois o array armas_wr nao está vazio


#Podemos também deletar itens de um array, usando .delete_at(), dentro do colchetes eu coloco a posição do item

armas_wr.delete_at(1) #nesse caso to excluindo o item da posição 1 do array armas_wr

#Se eu quiser deletar o ultimo valor do array eu uso o .pop

armas_wr.pop # deleta o ultimo item do array armas_wr

# Se eu quiser deletar o primeiro eu uso o .shift

armas_wr.shift # deleta o primeiro item do array