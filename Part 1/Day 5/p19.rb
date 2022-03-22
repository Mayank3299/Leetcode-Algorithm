# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    dummy_head= ListNode.new
    dummy_head.next = head
    
    fast, slow= dummy_head, dummy_head
    
    n.times { fast = fast.next}
    
    until fast.next.nil?
       fast= fast.next
        slow= slow.next
    end
    
    slow.next= slow.next.next
    dummy_head.next
end