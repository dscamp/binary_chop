#chop spec

require_relative '../lib/chop'

describe "binary chop" do

  context "number is not in array" do
    it "returns -1 when array empty" do
      chop(3, []).should eq(-1)
    end
    
    it "is -1 when not in array" do
      chop(3,[1])
    end

  end

  
  
  


end
