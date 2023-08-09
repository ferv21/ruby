# Regex
/by/ =~ 'ruby' # nesse caso ele me retornar 2, pois é a posição que ele se encontrar em 'ruby'
               # dessa forma temos que ver o 'ruby' como um array, com as posiçoes 0 1 2 3, nesse caso by começa na posição 2

# O regex é uma classe portante ele tem métodos

frase = "Hellow, how are you?"

frase_match = /how/.match(frase) # aqui basicamente eu verifico se existe 'how' dentro a variavel frase que tem o texto dentro com 'Hellow, HOW are you?'
# retorna <MatchData "how"> - signifca que encontrou usando o .match

# tbm posso usar o .pre_match - que encontra o que vem ANTES de how, por exemplo, o que vem a esquerda do Regex

frase_match.pre_match # isso aqui retornaria 'Hellow, ' que é exatamente o que vem antes de how

frase_match.post_match # isso aqui retornaria 'are you?', que é o que vem depois de how

# Podemos buscar por símbolos, usando a \ barra invertida  /\?/ nesse caso busca pelo '?'

/\?/.match('Tudo bem?') # retornaria <MatchData "?"> - significa que encontrou
# se eu tira a barra invertida, vai dar erro e vai dizer que é um caractere especial

# Outro exemplo

/bem\!\!\!/.match('Muito bem!!!') # buscando o 'bem' e os simbolos de pontos de interrogação

# tambem posso encontrar padroes que eu definir,

/[t]exto/.match('texto começando com t') # mesmo se meu texto começasse no final de algo bem maior, ele ia buscar ele começando com t

#tbm posso fazer com intervalos de numeros

/[1-5/].match('123') # nesse caso me retornaria a primeira coisa que tivesse entre 1 e 5, nesse caso seria já o número 1. se eu colocasse 2-5, ja retornaria o 2, pois eu tinha 1 2 e 3

# serve por exemplo para fazer máscaras de telefone 92 9277-9859

# da mesma forma que da pra fazer intervalos com numeros, da pra fazer com letras

/[A-Z]/.match('Oi') # nesse caso ja me retorna o O, pois é a primeira letra q ele encontra na palavra

# caso eu tivesse numeros e letras, eu n precisaria fazer 2 regex, basta eu usar o \d/, que pega qualquer primeiro numero decimal

/A\d/.match("A4") # Isso aqui encontrar respectivamente A4, com o <MatchData "A4">

# Tbm podemos fazer verificações multiplicadas, como exemplo um numero de celular
# basta passar o intervalo, ex: [0-9]{2} e passar a quantidade de vezes que eu quero repetir, essa verificação, nesse caso 2 vezes

/[0-9]{2}-[0-9]{5}-[0-9]{4}/.match('92-99277-9859') # dessa forma e com os intervalos mais as multiplas, eu posso verificar padroes
# no exemplo, primeiro busco 2 numeros de 0 a 9, depous 5 numeros de 0 a 9 e dps 4 numeros de 0 a 9, tbm tem os - , para separar, assim criando uma máscara de input
# lembrando que eu posso simplesmente substituir esses intervalos de [0-9] por \d/ que pega qualquer numero, no caso ficaria \d{5}/ por exemplo.
# se eu colocar por exemplo um \d{8,}/ essa virgula depois da quantidade que eu quero multiplicar, é como se fosse 8 ou mais, entao o minimo seria 8, menos que isso da erro, e se for mais que isso, vai buscar normalmente.


# Para resumir o regex serve para buscar informaçoes e padroes dentro de algo
# como exemplo emails, numeros de telefone, cpf e etc.