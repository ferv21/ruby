puts 'Digite o número do mês que você nasceu: '
month = gets.chomp.to_i #pego a string e transformo em numero

case month # caso month for : ....
when 1..3 # maneira de colocar um intervalo, nesse caso de 1 até 3
    puts 'Você nasceu no começo do ano'
when 4..6
    puts 'Você nasceu na primeira metade do ano'
when 7..9
    puts 'Você nasceu na segunda metade do ano!'
when 10..12
    puts 'Você nasceu no final do ano!'
else
    puts 'Não foi possível identificar'
end


#1..10 intervalo entre 1 e 10