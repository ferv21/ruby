#Podemos inserir dados em arquivos tbm

File.open('shopping-list.txt', 'a') do |line| # basicamente aqui eu to acessando meu arquivo, e esse 'a' significa que eu vou inserir dados, a não sobrescrever os dados.
    line.puts('Arroz') # Nesse caso eu adiciono Arroz, Feijão e Azeite por exemplo
    line.puts('Feijão')
    line.puts('Azeite')
end


# dessa forma podemos escrever em arquivos