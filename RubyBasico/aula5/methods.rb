def talk # o def e end sao blocos que chamamos de métodos, são ao funçoes.
    puts 'Olá, como você está?'
end

10.times do # vai chamar 10 vezes o método talk
    talk
end

def tellme(first_name, last_name) # aqui eu to passando 2 paramentros pra essa função, primeiro nome e sobrenome
    puts "Olá #{first_name} #{last_name}, como você está?"
end

tellme('Fernando', 'Viana') # como a função tellme tem 2 paramentros, eu passo eles assim que eu chamar a função
# se eu n passar os parametros, da erro.

# em javascript ficaria assim: 
# const tellme = (primeiro_nome, segundo_nome) => {
#   console.log(`${primeiro_nome} ${segundo_nome}, como você está?`)
# }

# dessa forma posso chamar esse funçao varias vezes e passar parametros diferentes

tellme('Felipe', 'Viana')
tellme('Eliana', 'Araújo')
tellme('Anne', 'Caroline')

#Eu posso passar funções com um parametro com um valor inicial

def sinal(color = 'vermelho') # basicamente eu to passando o parametro color e to dizendo que por padrao ele vai ser vermelho
    puts "O sinal esta #{color}" 
end

sinal # se eu n passar nenhum parametro nesse caso, por padrão é vermelho, pois eu já defini quando criei o método

sinal('Verde') # aqui eu só to alterando o parametro, no caso sinal(color = 'verde')

sinal('Amarelo') # valores de parametros ja definidos