require './src/queue.rb'

describe Queue do
  before(:each) do
    @queue = Queue.new
  end

  it "initializes empty"do
    @queue.length.should == 0
  end

  describe "#enqueue" do
    it "should enqueue the first item correctly" do
      @queue.enqueue 'first'
      @queue.length.should == 1
    end
    it "should enqueue multiple items correctly" do
      @queue.enqueue 'first'
      @queue.enqueue 'second'
      @queue.length.should == 2
    end
  end

  describe "#dequeue" do
    it "should dequeue items" do 
      @queue.enqueue 'first'
      @queue.length.should == 1
      @queue.dequeue.should == 'first'
      @queue.length.should == 0
      @queue.dequeue.should == nil
    end

    it "should always dequeue the first item" do 
      @queue.enqueue 'first'
      @queue.enqueue 'second'
      @queue.enqueue 'third'
      @queue.length.should == 3
      @queue.dequeue.should == 'first'
      @queue.dequeue.should == 'second'
      @queue.dequeue.should == 'third'
      @queue.length.should == 0
      @queue.dequeue.should == nil
    end

  end
end