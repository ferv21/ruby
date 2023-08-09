class Foo
    def call_private(instance)
        instance.bar
    end

    protected

    def bar
        puts "Protected method"
    end 
end

instance_1 = Foo.new
instance_2 = Foo.new
instance_1.call_private(instance_1)
instance_1.call_private(instance_2)


class MinhaClasse
    def foo(instacia)
        instacia.chamanome  # chamo a instancia que foi passada como argumento e a partir dela posso usar o método protected chamanome.
    end

    protected # o método protected pode ser chamado caso eu passa instacia como parametro de um método e o use dentro da própria classe

    def chamanome # esse aqui seria o método protected, que não pode ser chamado diretamente, mas pode ser chamado dentro da propria classe, caso eu consiga ter uma instancia dentro da classe, nessa caso passando ela como argumento
        puts "Olá, Fernando"
    end

end

instacia = MinhaClasse.new # cria a instancia
instacia.foo(instacia) # chamdo o método foo que não é protected e passo a propria instancia como argumento

#dizoi.chamanome -> eu n poderia chamar ele diretamente assim, pois é protected