numbers = { # aqui nos temos nossa hash
    A: 10, 
    B: 30, 
    C: 20, 
    D: 25, 
    E: 15
}

numbers_max = numbers.values.max # o método .values.max , eu pego o item que tem maior valor numerico do hash numbers

big_number = numbers.select do | key, value | # lembrando que hash tem dois valores, key e value
    value == numbers_max # aqui eu verifico qual value é o maior comparando todos com o que for igual ao que o .values.max retornou
end


puts big_number # aqui exibo o valor que o big_number mostra com o método select