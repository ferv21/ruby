require 'cpf_cnpj' # importo a gem, que eu baixo no arquivo gemfile e executo o bundle

puts 'Verificação de CPF!'


def cpf_valido  # crio o método

    print("Digite o número de cpf: ") # peço pro usuário digitar o cpf
    cpf_number = gets.chomp.to_i # armazeno o cpf digitado nessa variavel

    if CPF.valid?(cpf_number) # faço a verificação usando o CPF.valid?, coisa que é da gem que eu baixei
        puts "O cpf #{cpf_number} é válido!" # se o cpf for válido mostra ele e diz que é válido
    else
        puts "O cpf é inválido ou não existe" # se não for, mostra a mensagem de erro
    end    
end

cpf_valido # invoco a função para que ela seja chamada