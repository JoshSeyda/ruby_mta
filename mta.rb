require_relative "structure.rb"

user_input = ARGV
input_length = user_input.length
if user_input[0]==lines && input_length == 1  

elsif user_input[0]==lines && input_length != 1 
    puts "Plese provide the correct number of arguments, expecting 1, recieved #{input_length}"
elsif  user_input[0]==stops && input_length == 2 

elsif user_input[0]==stops && input_length != 2 
    puts "Plese provide the correct number of arguments, expecting 2, recieved #{input_length}"
elsif user_input[0]==calculate && input_length == 5

elsif user_input[0]==calculate && input_length != 5 
    puts "Plese provide the correct number of arguments, expecting 5, recieved #{input_length}"
else
    puts "Plese provide the correct command and number of arguments"
end