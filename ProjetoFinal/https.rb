require 'net/http' # importando a gem

https = Net::HTTP.new('reqres.in', 443) # sintaxe para usar a gem

# para fazer chamadas https
https.use_ssl = true 

response = https.get("/api/users") #fazendo get na api

#Status Code - retorna o código de resposta, tipo 200 se encontrar, 404 se n escontrar e etc
puts response.code

#Status Message - Nesse caso é a msg da resposta por exemplo 'OK'
puts response.message

# Body -> seria o Json - O corpo da api com as informações em formato JSON
puts response.body