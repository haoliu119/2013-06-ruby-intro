class BinaryTree
  def initialize value
    @value = value
    @left = nil
    @right = nil
  end

  attr_accessor :value
  attr_accessor :left
  attr_accessor :right

  def insert value
    if value == @value
      nil
    else
      (value < @value)? @left = BinaryTree.new(value): @right = BinaryTree.new(value)
    end
  end

  def contains value
    if value == @value
      true
    else
      [@left, @right].reduce(false) {|memo, tree| memo || (tree? tree.contains(value): false) }
    end
  end

  def depthFirstLog func
  end
end