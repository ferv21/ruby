require_relative 'product'
require_relative 'market'

product = Product.new('Monitor', 1500) # vou criar uma instancia de product, passando Monitor que é o name e o 1500 que seria o price
market = Market.new(product) # Vou criar uma instancia de market, passando como parametro a instancia de Product, que acabei de criar passando name e price

market.buy # chamo o método .buy de market para mostrar aquela mensagem na tela