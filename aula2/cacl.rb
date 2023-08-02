print "Digite o primeiro número inteiro: "
number1 = gets.chomp.to_i #o to_i é um método do ruby que trasnforma um dado de numero inteiro e transforma em string, semelhante ao parseTo do js
print "Digite o segundo número "
number2 = gets.chomp.to_i
adicao = number1 + number2

puts "O resultado da adição é : #{adicao}"