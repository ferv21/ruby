require 'net/http' # import da gem

# criando objeto de requisição http
req = Net::HTTP::Post.new("/api/users") #entre () está o path, ou seja o endpoint do  servidor que queremos acessar
#/api/users representa parte do caminho após o dominio, ele n é o site. o entao seria algo como https://www.example.com/api/users

# o req é o objeto que foi criando com o método new no POST
req.set_form_data({name:'Mario', job:'Encanador'}) # set_form_data é o método da classe Net::HTTP:Post, que permite definir os dados que serão enviados na requisição, que nesse casso sao passado como hash
                # Hash name: 'Mario', job:'Encanador'

# Aqui eu to criando uma variavel que vai armazenar a resposta da minha requisição
#o .start é o inicio da conexão com o servidor 'reqres.in' e o use_ssl:true -> significa que eu vou fazer uma conexão segura https com esse servidor
response = Net::HTTP.start('reqres.in', use_ssl: true) do |http| # inicio do bloco passando a varival temporaria para que eu possa manipular
    http.request(req) #requisição http que envia o objeto criado e aguarda a resposta
end

#os resultado são armazenados na variavel response e eu posso imprimir as informaçoes, como o status code, o json da resposta e etc
puts response.code #status code
puts response.body #json 