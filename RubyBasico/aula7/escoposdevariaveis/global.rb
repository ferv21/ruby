#Variavel Global

class Bar
    def foo
        $global = 0
        puts $global
    end
end
 # basicamente eu posso manipular ela em qualquer lugar
class Baz 
    def qux
        $global += 1 # nesse caso eu to incrementando +1 nela, sendo que ali em cima ela ta 0
        puts $global
    end
end

bar = Bar.new
baz = Baz.new
bar.foo
baz.qux
baz.qux

puts $global # e eu tbm posso chamar ela aqui, mesmo ela estando dentro de um método, pois ela é GLOBAL
