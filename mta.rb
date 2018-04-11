require_relative "structure.rb"

user_input = ARGV
input_length = user_input.length
str0 = user_input[0].downcase
str1 = user_input[1]
str2 = user_input[2]
str3 = user_input[3]
str4 = user_input[4]
str5 = user_input[5]

if str0== "lines" && input_length == 1  
    line_list
elsif str0=="lines" && input_length != 1 
    puts "Plese provide the correct number of arguments, expecting 1, recieved #{input_length}"

elsif  str0=="stops" && input_length == 2 
    if str1 == "L"
        p $l_train.stops
    elsif str1 == "6"
        p $six_train.stops
    elsif str1 == "N"
        p $n_train.stops
    elsif str1 == "Q"
        p $q_train.stops
    elsif str1 == "F"
        p $f_train.stops
    end
elsif str0=="stops" && input_length != 2 
    puts "Plese provide the correct number of arguments, expecting 2, recieved #{input_length}"

elsif str0=="calculate" && input_length == 5
    if str1 != "F"
        calculate(str1, str2, str3, str4)
    elsif str1 == "F"
        f_calculate(str1, str2, str3, str4)
    end
elsif str0=="calculate" && input_length != 5 
    puts "Plese provide the correct number of arguments, expecting 5, recieved #{input_length}"
else
    puts "Plese provide the correct command and number of arguments"
end