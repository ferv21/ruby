array = [1,2,3,4,5,6]

# o select seleciona os items de acordo com o parametro 
selection = array.select do |item| # Ele só vai retornar os valores que eu passar como parametro
    item >= 4   # nesse caso eu posso pesquisar, os items maiores ou igual a 4, nesse caso 4 5 6
end 

# ele só vai me retornar os itens que forem mais ou igual a 4
puts selection # mostrar os items de acordo com select ali, selection = array.select