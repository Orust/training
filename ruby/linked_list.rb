class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

node1 = ListNode.new(1)
node2 = ListNode.new(2)
node3 = ListNode.new(4)

node1.next = node2
node2.next = node3

p node1
p node2
p node2.val
p node2.next
p node2.next.val

# #<ListNode:0x000000015b124830 @val=1, @next=#<ListNode:0x000000015b124768 @val=2, @next=#<ListNode:0x000000015b124628 @val=4, @next=nil>>>
# #<ListNode:0x0000000144128190 @val=2, @next=#<ListNode:0x00000001441280f0 @val=4, @next=nil>>
# 2
# #<ListNode:0x00000001441280f0 @val=4, @next=nil>
# 4
