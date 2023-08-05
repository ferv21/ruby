#crie um programa que recebe nome e idade e exiba em uma unica frase

print ("Digite seu nome: ")
name = gets.chomp
print ("Digite sua idade: ")
age = gets.chomp.to_i # transforma a string em numero

puts "Olá #{name}, você tem #{age} anos de idade!"
