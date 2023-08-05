# variaveis locais

def foo
    local = 'local é acessada apenas dentro deste método' # variavel local
    print local
end

foo

puts local # isso aqui vai dar erro, pois local é uma variavel que esta localmente no método
           # Então é como se aqui a variavel não existisse