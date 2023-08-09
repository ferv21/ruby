# Para criar um time é simples
time = Time.now # basicamente me retorna o exato horário que estou kkkk
puts time # imprimo na tela esse horário, 2023-08-09 10:18:26 da manha

# se eu utilizar o .year por exemplo, eu pego só o ano.

puts time.year # 2023
puts time.day # apenas o dia
puts time.month # apenas o mes
# lembrando que o time aqui é o nome da variavel que eu criei ali em cima, o .year .month e .day sao métodos da classe Time do Ruby

#Posso tbm formatar esse dados no formato que eu quiser usando .strftime('%d/%m/%y'), nesse caso dia/mes/ano

puts time.strftime('%d/%m/%y') # 09/08/2023

# se eu usar só a $letra minuscula, ele me da o dado correspondente
# se eu usar o %D maiusculo, ele me da toda a data formatada tbm, Mas no padrao americano

puts 'data formatada com %D maiusculo'
puts time.strftime('%D') # retorna o mes/dia/ano , nesse formato

# se eu usar o $M , vai me devolver os minutos
# se eu usar o $m, vai me devolver o mes

# tbm posso fazer verificações, por exemplo qual dia da semana

puts time.saturday? # me retorna false, pois hoje n é sábado!

# podemos comparar datas
time2 = Time.now

puts time == time2 #false