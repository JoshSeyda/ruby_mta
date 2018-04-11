class Mta 
    attr_accessor :name, :stations

    def initialize(name, stations)
        @name = {name => stations}
    end

    def lines
        @name.each do |name, stations| 
            puts name
        end
    end

    def stops
        @name.each do |name, stations| 
            puts stations
        end
    end
end

class Line < Mta
    attr_accessor :name, :stations

    def initialize(name, stations)
        super(name, stations)
    end
end
# calculates distance between two stations
def calculate(line_1, stop_1, line_2, stop_2)
    # evaluates first (line, stop) argument
    if line_1 == "L"
        line_1 = $l_train
        if stop_1 != "Union Square"
            dist_to_usq_0 = ((line_1.stops.key(stop_1).to_i)-2).abs
        elsif stop_1 == "Union Square"
            dist_to_usq_0 = 0 
        end
    elsif line_1 == "6"
        line_1 = $six_train
        if stop_1 != "Union Square"
            dist_to_usq_0 = ((line_1.stops.key(stop_1).to_i)-4).abs
        elsif stop_1 == "Union Square"
            dist_to_usq_0 = 0 
        end
    elsif line_1 == "N"
        line_1 = $n_train
        if stop_1 != "Union Square"
            dist_to_usq_0 = ((line_1.stops.key(stop_1).to_i)-4).abs
        elsif stop_1 == "Union Square"
            dist_to_usq_0 = 0 
        end
    elsif line_1 == "Q"
        line_1 = $q_train
        if stop_1 != "Union Square"
            dist_to_usq_0 = ((line_1.stops.key(stop_1).to_i)-2).abs
        elsif stop_1 == "Union Square"
            dist_to_usq_0 = 0 
        end
    end
# evaluates second (line,stop) argument
    if line_2 == "L"
        line_2 = $l_train
        if stop_2 != "Union Square"
            dist_to_usq_1 = ((line_2.stops.key(stop_2).to_i)-2).abs
        elsif stop_2 == "Union Square"
            dist_to_usq_1 = 0
        end
    elsif line_2 == "6"
        line_2 = $six_train
        if stop_2 != "Union Square"
            dist_to_usq_1 = ((line_2.stops.key(stop_2).to_i)-4).abs
        elsif stop_2 == "Union Square"
            dist_to_usq_1 = 0 
        end
    elsif line_2 == "N"
        line_2 = $n_train
        if stop_2 != "Union Square"
            dist_to_usq_1 = ((line_2.stops.key(stop_2).to_i)-4).abs
        elsif stop_2 == "Union Square"
            dist_to_usq_1 = 0 
        end
    elsif line_2 == "Q"
        line_2 = $q_train
        if stop_2 != "Union Square"
            dist_to_usq_1 = ((line_2.stops.key(stop_2).to_i)-2).abs
        elsif stop_2 == "Union Square"
            dist_to_usq_1 = 0 
        end
    end
    puts num_of_stops = dist_to_usq_0 += dist_to_usq_1
end
# evaluates only if F line is part of input
def f_calculate(line_1, stop_1, line_2, stop_2)   
    # evaluates first (line,stop) argument
    if line_1 == "F"
        line_1 = $f_train
        if stop_1 != "Herald Square"
            dist_to_hsq_0 = ((line_1.stops.key(stop_1).to_i)-2).abs
        elsif stop_1 == "Herald Square"
            dist_to_hsq_0 = 0 
        end
    elsif line_1 == "L"
    line_1 = $l_train
    if stop_1 != "Union Square"
        dist_to_hsq_0 = ((line_1.stops.key(stop_1).to_i)-1).abs
    elsif stop_1 == "Union Square"
        dist_to_hsq_0 = 1 
    end
elsif line_1 == "6"
    line_1 = $six_train
    if stop_1 != "Union Square"
        dist_to_hsq_0 = ((line_1.stops.key(stop_1).to_i)-3).abs
    elsif stop_1 == "Union Square"
        dist_to_sq_0 = 1 
    end
elsif line_1 == "N"
    line_1 = $n_train
    if stop_1 != "Union Square"
        dist_to_hsq_0 = ((line_1.stops.key(stop_1).to_i)-3).abs
    elsif stop_1 == "Union Square"
        dist_to_hsq_0 = 1 
    end
elsif line_1 == "Q"
    line_1 = $q_train
    if stop_1 != "Union Square"
        dist_to_hsq_0 = ((line_1.stops.key(stop_1).to_i)-1).abs 
    elsif stop_1 == "Union Square"
        dist_to_hsq_0 = 1 
    end
end
# evaluates second (line, stop) argument
if line_2 == "F"
    line_2 = $f_train
    if stop_2 != "Herald Square"
        dist_to_hsq_1 = ((line_2.stops.key(stop_2).to_i)-2).abs
    elsif stop_2 == "Herald Square"
        dist_to_hsq_1 = 0 
    end
elsif line_2 == "L"
line_2 = $l_train
    if stop_2 != "Union Square"
        dist_to_hsq_1 = ((line_2.stops.key(stop_2).to_i)-1).abs
    elsif stop_2 == "Union Square"
        dist_to_hsq_1 = 1 
    end
elsif line_2 == "6"
line_2 = $six_train
    if stop_2 != "Union Square"
        dist_to_hsq_1 = ((line_2.stops.key(stop_2).to_i)-3).abs
    elsif stop_2 == "Union Square"
        dist_to_sq_1 = 1 
    end
elsif line_2 == "N"
line_2 = $n_train
    if stop_2 != "Union Square"
        dist_to_hsq_1 = ((line_2.stops.key(stop_2).to_i)-3).abs
    elsif stop_2 == "Union Square"
        dist_to_hsq_1 = 1 
    end
elsif line_2 == "Q"
line_2 = $q_train
    if stop_2 != "Union Square"
        dist_to_hsq_1 = ((line_2.stops.key(stop_2).to_i)-1).abs
    elsif stop_2 == "Union Square"
        dist_to_hsq_1 = 1 
    end
end
puts num_of_stops = dist_to_hsq_0 += dist_to_hsq_1
end
# creates the train lines
$l_train = Line.new("L", ["8th", "6th", "Union Square", "3rd", "1st"])
$six_train = Line.new("6", ["Grand Central", "33rd", "28th_lex", "23rd_lex", "Union Square"])
$n_train = Line.new("N", ["Times Square", "34th", "28th_bdwy", "23rd_bdwy", "Union Square", "8th"])
$q_train = Line.new("Q", ["Times Square", "Herald Square", "Union Square", "Canal St"])
$f_train = Line.new("F", ["Rockefeller Center", "42nd St", "Herald Square", "23rd St", "14th St", "West 4th"])
# returns all of the line names
def line_list
    $l_train.lines()
    $six_train.lines()
    $n_train.lines()
    $q_train.lines()
    $f_train.lines()
end



