hash = {} # Iniciamos o hash vazio

# Dizemos pro usuário digitar as 3 Keys e os 3 Values do Hash e armazenamos em uma variavel guardando o valor como gets.chomp
print ("Digite a primeira key: ")
first_key = gets.chomp
print ("Digite o primero value: ")
first_value = gets.chomp

print ("Digite a segunda key: ")
second_key = gets.chomp
print ("Digite o segundo value: ")
second_value = gets.chomp

print ("Digite a terceira key: ")
third_key = gets.chomp
print ("Digite o terceiro value: ")
third_value = gets.chomp


# podemos criar um novo hash e usar um metodo para unir os hashes
values = {first_key:first_value, second_key:second_value, third_key:third_value}


hash.merge!(values) # o método merge! une dois hashes, nesse caso to unindo o hash vazio com o que eu acabei de criar usando os valores dos print com get chomps

puts hash