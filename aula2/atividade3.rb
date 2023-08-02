#crie um programa que receba dois numeros e exiba todas as operaçoes entre eles

print ("Digite o primeiro número: ")
num1 = gets.chomp.to_i
print ("Digite o segundo número: ")
num2 = gets.chomp.to_i

puts ("#{num1} + #{num2} = #{num1 + num2}")
puts ("#{num1} - #{num2} = #{num1 - num2}")
puts ("#{num1} x #{num2} = #{num1 * num2}")
puts ("#{num1} / #{num2} = #{num1 / num2}")