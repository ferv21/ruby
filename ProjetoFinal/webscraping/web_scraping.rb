require 'net/http'
require 'nokogiri' # importando gem 

https = Net::HTTP.new('onebitcode.com', 443) # criando conexão com onebitcode na porta 443 que tem o ssl
https.use_ssl = true

response = https.get("/") # executando o get para buscar o path '/', que no caso seria a home

# usando a gem nokogiri para criar o html, passando como parametro a resposta da requisiçao feita com o Net
doc = Nokogiri::HTML(response.body) # passando a resposta em formato json

# dentro de doc, que é a variável que foi criada, ele vai mandar pegar o que no h1 por exemplo
h1 = doc.at('h1') # ele vai armazenar nessa variavel 
puts h1.content # e com o .content, a gente vai imprimir o conteúdo que foi pego dentro da tag h1
puts h1 # aqui ele me daria a tag inteira -> <h1>conteudo</h1>

# Outro exemplo

req = Net::HTTP.new('onebitcode.com', 443)
req.use_ssl = true

res = req.get("/")
docc = Nokogiri::HTML(res.body)
h3 = docc.at('h3 a')
puts h3.content
puts h3['href']


#podemos buscar mais de um elemento usando o método search

https = Net::HTTP.new('onebitcode.com', 443)

https.use_ssl = true
response = https.get("/")
doc = Nokogiri::HTML(response.body)

# aqui basicamente eu to pegando todas as tag h3 que tem um '<a href=""></a>' dentro, usando o each
doc.search('h3 a').each do |a|
    puts a.content
    puts a['href']
    puts ''
end