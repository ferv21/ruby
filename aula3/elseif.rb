day = 'Holiday'

if day == 'Sunday'
    lunch = 'special'
elsif day == 'Holiday' #diferente do js aqui é elsif e não else if
    lunch = 'later'
else 
    lunch = 'normal'
end

puts "Lunch is #{lunch} today"
