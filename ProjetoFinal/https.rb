require 'net/http'

https = Net::HTTP.new('regres.in', 443)

# para fazer chamadas https
https.use_ssl = true 

response = https.get("/api/users")

#Status Code
puts response.code

#Status Message
puts response.message

# Body -> seria o Json
puts response.body