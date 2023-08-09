count = 1

loop do  # O loop é como se fosse um do while ou case break , ele executa algo e da o break caso atenda a condição
    puts count 
    if count == 10 #nesse caso o loop vai dar break se o count chegar em 10
        break #se o count for igual a 10, break. O break para o loop.
    end
    count += 1 # é a mesma coisa que count = count + 1
end