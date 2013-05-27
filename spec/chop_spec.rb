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
      chop(3,[3])
    end
  end

#  context "slightly larger array" do
#    before(:each) do
#      nums = [1,3,5]
#    end

#    it "should return 0 when item in array" do
#      chop(1,nums)
#    end
    
#  end
  
  


end
