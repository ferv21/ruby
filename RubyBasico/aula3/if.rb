day = 'Sunday' # o simbolo de = é uma atribuição
lunch = 'normal' # declaração de variavel

if day == 'Sunday' # o simbolo de == é uma comparação
    lunch = 'special' #aqui eu sobreescreveria a variavel caso a verificação fosse verdadeira
end

puts "Luch is #{lunch} today"

# também podemos usar condicional alternário

sexo = 'M'
        # sexo é igual a M ? se sim 'Masculino' se nao 'Feminino'
puts sexo == 'M' ? 'Masculino' : 'Feminino'

# podemos usar assim também 

sexo == 'M' ? (puts 'Masculino') : (puts 'Feminino')