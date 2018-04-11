class Mta 
    attr_accessor :name, :stations

    def initialize(name, stations)
        @name = name
        @stations = stations
    end

    def lines
        p @name
    end
end

class Line < Mta
    attr_accessor :name, :stations

    def initialize(name, stations)
        super
    end

    def stops
        p @stations
    end


end