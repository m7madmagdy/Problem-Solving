# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    i = 0

    nums.each_with_index do |num, j|
        if num != 0
            nums[i] = num
            i += 1
        end
    end

    (i...nums.length).each { |j| nums[j] = 0 }

    nums
end
