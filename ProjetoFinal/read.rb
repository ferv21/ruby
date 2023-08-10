# lendo arquivos com ruby
puts '--Lista de Produtos---'

file = File.open('shopping-list.txt') # o comando File.open('caminho do arquivo') basicamente abre o arquivo e assim posso manipula-lo

file.each do |line| # aqui basicamente eu to fazendo um each da lista que eu criei, morango - brocolis e palmito por exemplo
    puts line # imprimindo os items da lista com a variavel temporaria line
end

#Dessa forma podemos ler arquivos