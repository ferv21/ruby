require 'os' # é como se estivesse importando a lib os

def my_os
    if OS.windows? # retorna true ou false, é como se fosse uma pergunta, se for true, entra na condição
        "Windows"
    elsif OS.linux?
        "Linux"
    elsif OS.mac?
        "Osx"
    else
        "Não consegui identificar!"
    end
end


puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} e o sistema operacional é #{my_os}"

#cpu_count conta quantos cores tem no processador
# .bits diz se o pc é de 32 ou 64bits por exemplo
# o my_os é a função com os if e else