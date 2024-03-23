class Node():
    next = None
    def __init__(self, value=None):
        self.value = value

class LinkedList():
    def __init__(self):
        self.head = None
    def add_node(self, value):
        if self.head is None:
            current_node = Node(value)
            self.head = current_node
        else: 
            last_node = self.head.next
            while last_node:
                last_node = last_node.next
            last_node.next = Node(value)
    def print(self):
        current_node = self.head
        while current_node.next:
            print(current_node.value)
            current_node = current_node.next
ll = LinkedList()
ll.add_node(7)
ll.add_node(9)
ll.add_node(8)
print(ll.print())
            

            

