class Mta 
    attr_accessor :name, :stations

    def initialize(name, stations)
        @name = name
        @stations = stations
    end

    def lines
         @name
    end

    def stops
         @stations
    end
end

class Line < Mta
    attr_accessor :name, :stations

    def initialize(name, stations)
        super(name, stations)
    end

end

def calculate(line_1, stop_1, line_2, stop_2)

end

$l_train = Line.new("L", ["8th", "6th", "Union Square", "3rd", "1st"])

$six_train = Line.new("6", ["Grand Central", "33rd", "28th_lex", "23rd_lex", "Union Square"])

$n_train = Line.new("N", ["Times Square", "34th", "28th_bdwy", "23rd_bdwy", "Union Square", "8th"])


def line_list
    $l_train.lines()
    $six_train.lines()
    $n_train.lines()
end

