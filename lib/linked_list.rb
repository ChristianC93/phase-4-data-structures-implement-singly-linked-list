require_relative './node'

class LinkedList
    attr_accessor :head

    def initialize
        @head = nil
    end

    def prepend(node)
        if head.nil?
            self.head = node
        else
            old_head = self.head
            self.head = node
            self.head.next_node = old_head
        end
    end

    def append(node)
        if head.nil?
            self.head = node
        else
            last_node = head
            while last_node.next_node
                last_node = last_node.next_node
            end
            last_node.next_node = node
        end
    end

    def delete_head
        if head
            if head.next_node
                self.head = head.next_node
            else
                self.head = nil
            end
        end
    end

    def delete_tail
        if self.head == nil
            self.head
        elsif self.head.next_node == nil
            self.head = nil 
        else
            tail = self.head
            while tail.next_node.next_node
                tail = tail.next_node
            end
            tail.next_node = nil
        end
    end

    def add_after(index, node)     
    end

end
