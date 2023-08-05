#require './animal.rb' # semelhante a importação de arquivos no react, importando o styles.css por exemplo
# apenas usando o require, nós precisamos identificar o caminho até o arquivo

#require_relative 'animal' # aqui eu chamo o arquivo nessa mesma pasta como require_relative
# animal = Animal.new # assim eu posso usar coisas de um arquivo que está em outro lugar
# animal.pular

require_relative 'animal' # se eu inverter e importar cachorro primeiro vai dar erro, pois ele vai ter herdado algo que ainda não existe ou n foi importado
require_relative 'cachorro'

puts '--Animal--'
animal = Animal.new
animal.pular

puts '--Cachorro--' # nao preciso importar nada no cachorro.rb pois o require_relative 'animal' ja vai estar nesse arquivo aqui, entao posso continuar herdando la
cachorro = Cachorro.new
cachorro.pular
cachorro.latir


