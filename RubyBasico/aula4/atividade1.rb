numbers = []

print ("Primeiro Número: ")
num1 = gets.chomp.to_i
print ("Segundo Número: ")
num2 = gets.chomp.to_i
print ("Terceiro Número: ")
num3 = gets.chomp.to_i

numbers.push(num1,num2,num3)


new_numbers = numbers.map do |item| # lembra sempre que esse item é a variavel temporaria
    item ** 2 # elevando a segunda potencia
end

puts new_numbers