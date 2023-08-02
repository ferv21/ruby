result = '' # atribuindo um valor vazio a uma string

loop do #do while
    puts result
    puts 'Selecione uma das seguintes opções'
    puts '1 - Descobrir a idade de uma pessoa'
    puts '0 - Sair'
    print ("Opção: ")
    option = gets.chomp.to_i
    if option == 1 # Se a opçao for 1, vai cair nessa condição
        print 'Digite o ano de nascimento: '
        year_of_birthday = gets.chomp.to_i
        print 'Digite o ano atual: '
        current_year = gets.chomp.to_i
        age = current_year - year_of_birthday
        result = "Quem nasceu no ano de #{year_of_birthday}, tem #{age} anos em #{current_year}"
    elsif option == 0 #Se a opção for 0, vai parar o loop com o break
        break 
    else # Se não for 0 e nem 1, vai aparecer que a opção é invalida!
        result = 'Opção inválida'
    end
    #comando que limpa o console
    system "clear"
end