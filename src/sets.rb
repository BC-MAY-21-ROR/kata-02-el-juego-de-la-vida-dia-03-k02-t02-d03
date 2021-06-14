
class Sets
    attr_reader :position

    attr_writer :state 

    attr_accessor :neighbors

    def initialize(position)
        @position = position
        @state = false
        @neighbors = []
    end    

    def new_neighbor(position)
        @neighbors.push(position)
    end   

    def alive?
        @state
    end    

end