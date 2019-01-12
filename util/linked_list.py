class node:
    def __init__(self, data=None):
        self.data = data
        self.next = None

class linked_list:
    def __init__(self):
        self.head = node()

    def append(self, data):
        ptr = self.head 
        while ptr.next != None:
            ptr = ptr.next
        
        new_node = node(data)
        ptr.next = new_node