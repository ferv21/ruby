module Person 
    class Juridic

        def initialize (name, cnpj) # o método initialize é especial - a explicação ta no final do código
            @name = name
            @cnpj = cnpj
        end

        def add
            puts 'Pessoa Jurídica Adicionada!'
            puts "Nome : #{@name}"
            puts "Cnpj: #{@cnpj}"
        end
    end

    class Physical
        puts 'Pessoa Física  Adicionada!'
    end
end

pessoajuri = Person::Juridic.new('M. C. Investimentos', '4241.123/0001')
pessoajuri.add

# o método initialize é como se fosse um construtor, ele é um método que é automaticamente
# chamado ao criar um objeto de classe, Entao quando criamos e usamos o .new, automaticamente
# o método é chamado, o termo initialize é padrão do Ruby.