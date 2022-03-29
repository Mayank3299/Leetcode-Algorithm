# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    return list1 if list2.nil?
    return list2 if list1.nil?
    
    list= ListNode.new
    if list1.val >= list2.val
        list.val = list2.val
        list2 = list2.next
    else
        list.val = list1.val
        list1 = list1.next
    end
    list.next = merge_two_lists(list1, list2)
    list
end