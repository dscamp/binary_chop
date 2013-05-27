#chop spec

require_relative '../lib/chop'

describe "binary chop" do

  context "some simple checks" do
    it "returns -1 when array empty" do
      chop(3, []).should eq(-1)
    end
    
    it "returns -1 when not in array" do
      chop(3,[1])
    end

    it "returns 0 when only number in array" do
      chop(3,[3])
    end

  end

  
  
  


end
