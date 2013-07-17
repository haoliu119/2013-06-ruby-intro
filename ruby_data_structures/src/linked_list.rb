class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  attr_reader :head
  attr_reader :tail

  def addToTail value
    @tail && @tail = @tail.next = Node.new(value)
    @head || @head = @tail = Node.new(value)
  end

  def removeHead
    temp = @head && @head.value
    @head && @head = @head.next
    temp
  end

  def contains value
    @head? @head.contains(value): false
  end

  class Node
    def initialize value
      @value = value
      @next = nil
    end
    attr_accessor :value
    attr_accessor :next
    def contains value
      @value == value || (@next? @next.contains(value): false)
    end

  end

end