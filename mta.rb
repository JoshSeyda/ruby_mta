require_relative "structure.rb"

user_input = ARGV
input_length = user_input.length
str = user_input[0].to_s
if str== "lines" && input_length == 1  
    line_list
elsif str=="lines" && input_length != 1 
    puts "Plese provide the correct number of arguments, expecting 1, recieved #{input_length}"
elsif  str=="stops" && input_length == 2 

elsif str=="stops" && input_length != 2 
    puts "Plese provide the correct number of arguments, expecting 2, recieved #{input_length}"
elsif str=="calculate" && input_length == 5

elsif str=="calculate" && input_length != 5 
    puts "Plese provide the correct number of arguments, expecting 5, recieved #{input_length}"
else
    puts "Plese provide the correct command and number of arguments"
end