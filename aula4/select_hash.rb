hash = {0 => 'zero', 1 => 'um', 2 => 'dois' , 3 => 'tres'}

puts 'Selecionando keys com valor maior que 0'

selection_key = hash.select do |key, value| # nesse caso eu quero q ele só retorne os valores que a key for maior que 0
    key > 0
end

puts selection_key


# Exemplo nerd

refinos = {'Machado' => '+12', 'Lanca' => '+10', 'Punho' => '+8'}

puts 'Selecionando qual arma tem refino +12'

arma_12 = refinos.select do |key , value|
    value == '+12' # verifico qual key tem o value igual a +12
end

puts arma_12