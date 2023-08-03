names = ['Fer', 'Felipe', 'Steal']
name = 'Leleu'

names.each do |name| # basicamente o |name| dentro das pipe é uma variavel temporaria tipo o items.map((item)=>), esse item seria a variavel temporaria
    puts name # eu vou armazenar cada item o array e listar eles
end

puts name


# basicamente eu posso manipular o array names, usando o each, atraves da variavel que esta entre
# |    | , assim eu posso usar a variavel temporaria name para fazer algo