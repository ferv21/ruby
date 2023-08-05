#O lambda faz com que eu consiga armazenar meu block dentro de uma variavel
first_lambda = lambda do # preciso usar o 'lambda' antes de iniciar o bloco com o 'do'
    puts "My first lambda"
end

#posso chamar esse bloco quantas vezes eu quiser atraves da variavel que eu armazenei o bloco .call
first_lambda.call
first_lambda.call
first_lambda.call

# Podemos usar um símbolo ao invés da palavra lambda
# com o símbolo -> (menos - com o maior que >)
second_lambda = -> do 
    puts "Lambda com o símbolo -> "
end

second_lambda.call

#Podemos também receber parâmetros em nossa lambda
third_lambda = -> (names) do #nesse caso minha lambda vai receber (names) como parametro
    names.each do |item| # farei um each no parametro que eu vou receber quando der o .call no bloco
        puts item # coloando o puts e a variavel temporaria item, vai me listar todos os itens atraves do each, como se fosse um loop
    end
end

# defino 2 arrays de exemplo, pra passar de parametro quando eu fizer o .call das lambdas, que precisam receber o parametro
names = ["Fer", "Fallen", "Coldzera"]
times = ["G2","SK","Astralis","Faze"]

third_lambda.call(names)
third_lambda.call(times)

#Como eu ja venho fazendo, ao usar uma lambda mais complexa, use o nome lambda ao inves de ->
# E eu to usando sempre o bloco ao inves de escrever na linha

my_lambda = -> (numbers) do 
    index = 0
    puts 'Número atual + próximo número'
    numbers.each do |number|
       return if numbers[index] == numbers.last
       puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
       puts numbers[index] + numbers[index + 1]
       index += 1
    end
end

numbers = [1,2,3,4]
my_lambda.call(numbers)

# Se eu usar o símbolo eu passo o parametro nessa ordem
# my_lambda = -> (parametro) do - nesse caso o parametro é em colchetes ()

#Se eu usar a palavra lambda, eu passo o parametro nessa ordem
# my_lambda = lambda do |parametro|  - nesse caso o parametro é entre pipe | |


my_lambda.call(numbers)

# Se eu usar o símbolo eu passo o parametro nessa ordem
# my_lambda = -> (parametro) do - nesse caso o parametro é em colchetes ()

#Se eu usar a palavra lambda, eu passo o parametro nessa ordem
# my_lambda = lambda do |parametro|  - nesse caso o parametro é entre pipe | |


# Segundo o chat gpt, é mais moderno usar o ->, ao inves de lambda, semelhante a arrow function
# function = () =>

# BASICAMENTE É UMA ARROW FUNCTION DO JAVASCRIPT

# As lambdas tbm podem ser passadas como argumento para um método também
def foo (primeira_lambda, segunda_lambda) # esse método precisa receber 2 argumentos
    primeira_lambda.call # chamando os argumentos
    segunda_lambda.call
end

primeira_lambda = -> do # criando primeira lambda
    puts "Minha primeira lambda"
end

segunda_lambda = -> do # criando segunda lambda
    puts "Minha segunda lambda"
end

foo(primeira_lambda, segunda_lambda) #passando as duas lambdas como argumentos