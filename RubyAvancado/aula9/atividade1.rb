my_phonenumber = /\(\d{2}\)\d{5}-\d{4}/.match('(92)99277-9859')
# lembrando que eu preciso passar caracteres especiais com \caractereespecial
puts "Olá tudo bem? Meu whatsapp é #{my_phonenumber}" # retorna meu filtro com o regex