class Mta 
    attr_accessor :name, :stations

    def initialize(name, stations)
        @name = name
        @stations = stations
    end

    def lines
        puts @name
    end
end

class Line < Mta
    attr_accessor :name, :stations

    def initialize(name, stations)
        super
    end

    def stops
        puts @stations
    end
end

def calculate(line_1, stop_1, line_2, stop_2)

end

