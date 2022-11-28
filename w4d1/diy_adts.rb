class Stack
    def initialize
      @arr = []
    end

    def push(el)
        @arr.push(el)
    end

    def pop
        @arr.pop
    end

    def peek
        @arr.last
    end
end

class Queue
    def initialize
        @line = []
    end

    def enqueue(el)
        @line.push(el)
        el
    end

    def dequeue
        @line.shift
    end

    def peak
        @line.first
    end

end


# As you saw in the videos for tonight, a map can be implemented using a 2D array. Let's write a Map class 
# (following a similar pattern to Stack and Queue) that implements a map using only arrays.

# Remember, a map stores information in key-value pairs, where the keys are always unique. When implemented 
# with arrays, a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

# Our Map class should have the following instance methods: set(key, value), get(key), delete(key), show.
#  Note that the set method can be used to either create a new key-value pair or update the value for a pre-existing 
# key. It's up to you to check whether a key currently exists!

# As always, test your code thoroughly to make sure all properties of maps are enforced.

class Map
    def initialize
        @map = Array.new {Array.new(2)}
    end

    def set(key, val)
        if !@map.empty? 
            @map.each do |subarr|
                if !subarr.include?(key)
                    @map << [key, val]
                end
            end
        else
            @map << [key, val]
        end
    end

    def get(key)
        @map.each do |subarr|
            return subarr[1] if subarr.include?(key)
        end
    end

    def delete(key)
        @map.each do |subarr|
            @map.delete(subarr) if subarr.include?(key)
        end
    end
    
    def show
        @map
    end
end