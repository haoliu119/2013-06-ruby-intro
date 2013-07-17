class Queue
  def initialize
    @length = 0
    @storage = []
  end

  def length
    @length
  end

  def enqueue item
    @length += 1
    @storage.push item
  end

  def dequeue
    unless @length == 0
      @length -= 1
      @storage.shift
    end
  end
end