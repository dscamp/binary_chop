#chop spec

require_relative '../lib/chop'

describe "binary chop" do

  context "some simple checks" do
    it "returns -1 when array empty" do
      chop(3, []).should eq(-1)
    end
    
    it "returns -1 when not in array" do
      chop(3,[1]).should eq(-1)
    end

    it "returns 0 when only number in array" do
      chop(3,[3]).should eq(0)
    end
  end

  context "when using multi number array" do
    before(:each) do
      @nums = [1,3,5]
    end

    it "should return 0 when num is first item in array" do
      chop(1,@nums).should eq(0)
    end
    
    it "should return 1 when num is  second item in array" do
      chop(3,@nums).should eq(1)
    end
  end
  
  


end
