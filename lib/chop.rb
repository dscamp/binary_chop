# binary chop kata from Dave Thomas codekata.prapprog.com
require 'test/unit'



def chop (num, nums)
  nums.each_index { |i| return i if num == nums[i] }
  return -1
end




