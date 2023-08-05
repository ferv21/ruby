carros = {} # Hash é semelhante ao objeto

carros = {Honda: 'Civic', Toyota: 'Hilux', Audi: 'A4'}

# Para adicionar um novo item ao hash, usamos a seguinte sintaxe

carros[:Chevrolet] = "Camaro" #Dessa forma eu adiciono o item ao objeto
# a saída desse código seria carros = {Honda: 'Civic', Toyota: 'Hilux', Audi: 'A4', Chevrolet: 'Camaro'}

#para eu poder ver todas as chaves do meu objeto, no caso Honda: 'Civic', eu uso o .keys

carros.keys # aqui eu vejo apenas Honda,Toyota,Audi e etc

carros.values # aqui eu vejo o valor de cada key, tipo Civic, Hilux, A4

#Para excluir algo eu posso usar o .delete(:chave do item)
carros.delete(:Honda) # nesse caso exclui o Honda Civic

#para pegar um valor de um hash, só preciso pegar ele e passar a chave :chave
carros[:Toyota] # retorna Hilux

#para saber a quatidade de elementos usamos o .size
carros.size

#podemos usar o empty? tambem para verificar se está vazio
carros.empty? # retorna false, pois o hash n está vazio
