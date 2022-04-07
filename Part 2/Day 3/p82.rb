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
def delete_duplicates(head)
    dummy= ListNode.new
    dummy.next= head
    
    pred= dummy
    while head != nil
        if head.next != nil && head.val == head.next.val
           while head.next != nil && head.val == head.next.val
               head= head.next
           end
           pred.next= head.next 
        else
            pred= pred.next
        end
        head= head.next
    end
    
    dummy.next
end