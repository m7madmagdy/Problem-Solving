# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  # Create a hash map to store the frequency of each element
  frequency = Hash.new(0)
  nums.each { |num| frequency[num] += 1 }
  
  # Sort the hash map by frequency in descending order and take the first k elements
  frequency.sort_by { |num, count| -count }.take(k).map(&:first)
end