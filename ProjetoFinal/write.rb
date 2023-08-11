#Podemos inserir dados em arquivos tbm

File.open('shopping-list.txt', 'a') do |line| # basicamente aqui eu to acessando meu arquivo, e esse 'a' significa que eu vou inserir dados, a não sobrescrever os dados.
    line.puts('Arroz') # Nesse caso eu adiciono Arroz, Feijão e Azeite por exemplo
    line.puts('Feijão')
    line.puts('Azeite')
end

# com o argumento 'a' eu indico que vou escrever no arquivo, mas vou manter os dados que já estão lá, ou seja, vou apenas adiocionar coisa e não sobreescrever o arquivo
# dessa forma podemos escrever em arquivos