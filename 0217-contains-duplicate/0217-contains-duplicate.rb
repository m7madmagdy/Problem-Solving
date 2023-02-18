# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    # has_duplicates = nums.uniq.any? { |e| nums.count(e) > 1 }
    # return has_duplicates

    # another solution
    has_duplicates = nums.length != nums.uniq.length
    return has_duplicates

end