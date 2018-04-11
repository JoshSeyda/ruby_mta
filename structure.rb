class Mta 
    attr_accessor :name, :stations

    def initialize(name, stations)
        @name = {:name => stations}
    end

    def lines
        @name[:name]
    end

    def stops
        @name[:name]
    end
end

class Line < Mta
    attr_accessor :name, :stations

    def initialize(name, stations)
        super(name, stations)
    end

end

def calculate(line_1, stop_1, line_2, stop_2)
    if line_1 == "L"
        line_1 = $l_train
        if stop_1 != "USQ"
            dist_to_usq_0 = (line_1.stops.index(stop_1)-2).abs
        elsif stop_1 == "USQ"
            dist_to_usq_0 = 0 
        end
    elsif line_1 == "6"
        line_1 = $six_train
        if stop_1 != "USQ"
            dist_to_usq_0 = (line_1.stops.index(stop_1)-4).abs
        elsif stop_1 == "USQ"
            dist_to_usq_0 = 0 
        end
    elsif line_1 == "N"
        line_1 = $n_train
        if stop_1 != "USQ"
            dist_to_usq_0 = (line_1.stops.index(stop_1)-4).abs
        elsif stop_1 == "USQ"
            dist_to_usq_0 = 0 
        end
    end

    if line_2 == "L"
        line_2 = $l_train
        if stop_2 != "USQ"
            dist_to_usq_0 = (line_2.stops.index(stop_2)-2).abs
        elsif stop_2 == "USQ"
            dist_to_usq_0 = 0 
        end
    elsif line_2 == "6"
        line_2 = $six_train
        if stop_2 != "USQ"
            dist_to_usq_0 = (line_2.stops.index(stop_2)-4).abs
        elsif stop_2 == "USQ"
            dist_to_usq_0 = 0 
        end
    elsif line_2 == "N"
        line_2 = $n_train
        if stop_2 != "USQ"
            dist_to_usq_0 = (line_2.stops.index(stop_2)-4).abs
        elsif stop_2 == "USQ"
            dist_to_usq_0 = 0 
        end
    end
    distance_00 = line_1.stops.index(stop_1)
    distance_01 = line_2.stops.index(stop_2)
    distance_02
end

$l_train = Line.new("L", ["8th", "6th", "Union Square", "3rd", "1st"])

$six_train = Line.new("6", ["Grand Central", "33rd", "28th_lex", "23rd_lex", "Union Square"])

$n_train = Line.new("N", ["Times Square", "34th", "28th_bdwy", "23rd_bdwy", "Union Square", "8th"])


def line_list
    $l_train.lines()
    $six_train.lines()
    $n_train.lines()
end


