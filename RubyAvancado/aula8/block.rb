5.times do 
    puts "Executando 5 vezes"
end

5.times do |i|
    puts "Número: #{i}"
end

# se for apenas uma linha podemos usar o { }
10.times {puts "Olá Mundo"} # digito olá mundo 10 vezes.

# posso passar parametros para o block, usando as {}
sum = 0
numbers = [5,10,5]
numbers.each {|number| sum += number} # assim é estranho, mas tbm ta correto
puts sum

# seria a mesma coisa que
# assim EU acho mais legível e elegante
sum = 0
numbers = [5,10,5]
numbers.each do |number|
    sum += number
end



foo = {2 => 3, 4 => 5} # Hash
#no each abaixo, primeiro no key vai ser o 2 e no value 3, dps vai ser 4 e 5
foo.each do |key, value| # percorre todo o foo, e para cada chave e value, faz a multiplicação ali, mostrando essas 4 mensagens
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key x value = #{key * value}"
    puts '---'
end


#Método que recebe um bloco como parametro

def foo # criando o método foo
    #call the block
    yield # o yield executa o bloco que foi passado como parâmetro
    yield # executando pela segunda vez
end

foo do  # aqui basicamente eu to passando como parametro pro foo, o puts "Exec the block", então quando eu chamar o yield dentro do método foo, é como se eu tivesse chamando o parametro do bloco foo 2 vezes.
    puts "Exec the block" 
end

# no exemplo acima sabemos que o parametro foi passado para o método
# Mas podemos verificar se o método realmente foi passando usando o block_given?

def fuu 
    if block_given? # verificando se o bloco foi passado como parametro
        yield # chamando o bloco
    else 
        puts "Sem parâmetro do tipo bloco"
    end
end

fuu # chamando o método sem parametro para cair no else puts "Sem parâmetro do tipo bloco"
fuu do  # passando parametro para cair no if block_given?, no qual tem o yield dentro que chama o puts "Com parâmetro do tipo bloco"
    puts "Com parâmetro do tipo bloco"
end

# SÓ PODEMOS PASSAR 1 BLOCO POR MÉTODO

# Ainda posso continuar passando meus parametros normais, caso eu queira passar
# junto com um bloco, eu coloco o bloco como ultimo parametro e com o & antes de chamar 
def faa (name, &block)
    @name = name
    block.call # para chamar o bloco recebido no parametro, precisamos usar o .call, nesse caso block.call
    # no block.call é como se eu colocasse puts "Olá #{@name}"
end

# passo o 'Fernando' como parametro normal
faa('Fernando') do # no inicio do end, é o meu parametro de bloco, e o que tiver dentro dele vai ser o que o &block acima vai receber
    puts "Olá #{@name}"
end

# passamos um parametro normal
def ccc(numbers, &block) # passamos um bloco como parametro
    if block_given? # se o block for passado vai fazer oq ta abaixo
        #isso é um bloco
        numbers.each do |key, value| # fazendo um each do primeiro parametro que foi passado
            #isso é outro bloco que é o &block parametro
            block.call(key,value) # chamando o block que foi passando como parametro também, dentro do each
        # É como se o block.call fosse isso aqui embaixo:    
        #  puts "#{key} * #{value} = #{key * value}"
        # puts "#{key} + #{value} = #{key + value}"'
        #puts '---'
        end 
    end
end

numbers = {2 => 2, 3 => 3, 4 => 4} # hash que vai ser o primeiro paramentro numbers do def ccc.

ccc(numbers) do |key, value| # esse 'do', é o &block que ta sendo passado como parâmetro.
    puts "#{key} * #{value} = #{key * value}"
    puts "#{key} + #{value} = #{key + value}"
    puts '---'
end
