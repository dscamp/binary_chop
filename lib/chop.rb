#! /usr/bin/env ruby
# binary chop kata from Dave Thomas codekata.prapprog.com

def chop(num, nums, pos=0)
  return -1 if nums.length == 0
  re_chop(num, nums, pos)
end

def re_chop (num, nums, pos)

  return -1 if num < nums[0] || num > nums[-1]


  #only one element
  return pos if nums.length == 1

  #the real fun
  mid = nums.length / 2

  last = nums.slice( mid, nums.length)
  return re_chop(num, last, mid + pos)  if num >= last[0]

  first = nums.slice( 0, mid)
  return re_chop(num, first, pos) 
end


if __FILE__ == $0
  num = ARGV[0].to_i
  nums = ARGV[1].scan(/\d/).map(&:to_i)

  puts chop(num, nums)
end
