require './src/linked_list.rb'

describe LinkedList do
  before(:each) do
    @list = LinkedList.new
  end

  it "initializes with empty head and tail" do
    @list.head.should == nil
    @list.tail.should == nil
  end

  describe "#addToTail" do
    it"should add items to the tail" do
      @list.addToTail 1
      @list.addToTail 2
      @list.addToTail 3
      @list.addToTail 4
      @list.head.value.should == 1
      @list.tail.value.should == 4
    end
  end
  describe "#removeHead" do
    it"should remove items from head and return value of removed node" do
      @list.addToTail 1
      @list.addToTail 2
      @list.addToTail 3
      @list.addToTail 4
      @list.removeHead.should == 1
      @list.removeHead.should == 2
      @list.head.value.should == 3
      @list.tail.value.should == 4
    end
  end
  describe "#contains" do
    it"should return true for values added to the list" do
      @list.addToTail 1
      @list.addToTail 2
      @list.addToTail 3
      @list.addToTail 4
      @list.contains(1).should == true
      @list.contains(3).should == true
      @list.removeHead
      @list.contains(1).should == false
      @list.contains(5).should == false
    end
  end
end