class GraphNode
    attr_accessor :value, :neighbors
    
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def bfs(starting_node, target_value)
        queue = [starting_node]
        until queue.empty?
            first = queue.shift
            if first.value == target_value
                return first.value
                queue += first.neighbors
            end
        end
        nil
    end


end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]