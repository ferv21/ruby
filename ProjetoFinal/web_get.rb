require 'net/http' #importando a gem

example = Net::HTTP.get('example.com', '/index.html') #aqui fazemos a requisição get, passando o link do site ou etc, e nesse caso o caminho para o index.html, que normalmente seria a página principal

# abriremos um arquivo html, caso n exista ele vai ser criado
File.open('example.html', 'w') do |line| # o 'w' significa que vai sobreescrever
    line.puts(example)
end

# Entao acontece que dessa forma eu to pegando a página html desse site example.com
# e criando ela usando o File.open, para escrever ela no meu arquivo
# tudo isso sendo feito atráves de uma requisição http do tipo get. passando 
# o caminho do site e o que eu quero fazer o get.


#Como em qualquer linguagem os métodos sao os mesmo, get, post, delete e etc
# Cada um tem seu código de resposta 404 e etc, 201.

