# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |num, index|
        diff = target - num
        if hash[diff]
            return [hash[diff], index]
        else
            hash[num] = index 
        end
  end
end