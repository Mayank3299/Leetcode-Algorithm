# Definition for Node.
# class Node
#     attr_accessor :val, :left, :right, :next
#     def initialize(val)
#         @val = val
#         @left, @right, @next = nil, nil, nil
#     end
# end

# @param {Node} root
# @return {Node}
def connect(root)
    return if root.nil?
    
    queue= []
    queue << root
    
    until queue.empty?
        temp= nil
        queue.length.times do
            node = queue.shift
            temp.next = node if temp
            temp = node
            
            queue << node.left if node.left
            queue << node.right if node.right
        end
    end
    
    root
end