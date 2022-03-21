# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
    mid_pointer = head
    last_pointer = head
    counter = 1
    
    while (!last_pointer.nil? && last_pointer.next != nil)
        last_pointer= last_pointer.next.next
        mid_pointer= mid_pointer.next
    end
    
    mid_pointer
end