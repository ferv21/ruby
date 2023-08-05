loop do

    print ("Digite o primeiro número: ")
    num1 = gets.chomp.to_i
    print ("Digite o segundo número: ")
    num2 = gets.chomp.to_i

    puts '1 - Adição'
    puts '2 - Subtrair'
    puts '3 - Multiplicação'
    puts '4 - Divisão'
    puts '0 - Sair'
    print ("Selecione a Operação que você deseja realizar: ")
    option = gets.chomp.to_i
    
    if option == 1
        puts "#{num1} + #{num2} = #{num1 + num2}"
    elsif option == 2
       puts "#{num1} - #{num2} = #{num1 - num2}"
    elsif option == 3
        puts "#{num1} x #{num2} = #{num1 * num2}"
    elsif option == 4
        puts "#{num1} / #{num2} = #{num1 / num2}"
    elsif option == 0
        break
    else 
        puts 'Opção inválida!'
    end
end