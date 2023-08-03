numbers = []

print ("Primeiro Número: ")
num1 = gets.chomp.to_i
print ("Segundo Número: ")
num2 = gets.chomp.to_i
print ("Terceiro Número: ")
num3 = gets.chomp.to_i

numbers.push(num1,num2,num3)


new_numbers = numbers.map do |item|
    item * item
end

puts new_numbers