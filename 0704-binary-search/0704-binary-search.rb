# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  nums.each_with_index do |num, index|
    return index if num == target
  end

  return -1
end