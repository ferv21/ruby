module ReverseWord # criando o module
                # o text é o parametro
    def self.puts text # o self.algumacoisa é uma forma de definir um método para o module, sem a necessidade de criar uma instancia para chamar o método
        print text.reverse.to_s # imprimo na tela o parametro que for passado e o .reverse inverte as letras da palavra
    end
end 

# aqui a mesma coisa
module NormalWord #defino o modulo
    def self.puts text # crio método para o modulo sem precisar criar instancia para chamar o método
        print text # imprimo o argumento que foi passado ao chamar o método do module com ::nomedometodo 'argumento'
    end
end

ReverseWord::puts 'O resultado é' # para chamar um método de module, eu preciso colocar o nome do module :: nome do método + 'argumento'
NormalWord::puts 'O resultado é'

# entao como o def self , eu posso criar um método para o módulo sem ter que criar uma instancia 
# e chamar o método, igual como fazemos com a class
# e assim posso chamar o método diretamente usando o nome do module + :: + o nome do método + o argumento


# também posso criar uma class dentro de um módulo!
module ExemploModule # crio o module
    def self.puts texto #crio um método pro module, só exemplificando, ele vai receber um texto
        print texto # imprimo o texto
    end

    class DizerOi # criando a classe dentro de um module
        def dizalgo ola # criando metodo normal para a class que recebe o parametro ola
            print ola # imprimo o parametro que eu receber
            print '---disse oi---'
        end
    end
end

# dessa forma eu chamo o método normal pro module com ::puts 'argumento'
ExemploModule::puts 'Você não tem inimigos!'

#na linha abaixo eu crio a instacia, passo o module::'nomedaclass'.new
dizerola = ExemploModule::DizerOi.new
#na linha abaixo eu chamo o método da class normalmente.
dizerola.dizalgo 'Oi tudo bem?'