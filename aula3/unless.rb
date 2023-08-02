product_status = 'closed'

# aqui eu verifico se o product_status não está igual a open
unless product_status == 'open' # basicamente o unless é uma negação !product_status
    check_change = 'can'
else
    check_change = 'can not'
end

puts "You #{check_change} change the product"