class Foo
    def call_private
        bar # passando o bar aqui nesse outro método, é possivel acessar ele atráves desse método call_private, pois mesmo bar sendo private, eu posso chamar ele dentro da propria classe
        # self.bar -> isso aqui não funciona
    end

    private # o private basicamente protege meu método bar de ser chamado pela instancia dele, caso eu fosse criar foo.bar por exemplo, ia dar erro.

    def bar
        puts "Private method"
    end
end

foo = Foo.new
foo.call_private # sendo assim ao chamar call_private eu to acessando o método bar, pois ele está dentro de call_private, e o contéudo dele vai ser exibido atraves do call_private, mesmo ele sendo private, pois está dentro da mesma classe
# se eu fosse chamar o .bar direto, ia dar erro pois ele é private.

# usar o self.bar dentro de call_private tbm n funciona, pois o self funciona como uma instancia.

# Basicamente o private serve para organizar e proteger os métodos em uma escala maior.