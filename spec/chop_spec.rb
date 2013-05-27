#chop spec

require_relative '../lib/chop'

describe Chop do
  it "returns -1 when array empty" do
    c = Chop.new
    c.chop(3, []).should eq(-1)
  end



end
