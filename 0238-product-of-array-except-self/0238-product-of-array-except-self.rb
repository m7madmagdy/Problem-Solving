# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  n = nums.length
  left_products = Array.new(n, 1)
  right_products = Array.new(n, 1)
  answer = Array.new(n, 1)

  # Calculate the product of all elements to the left of i
  (1...n).each do |i|
    left_products[i] = left_products[i-1] * nums[i-1]
  end

  # Calculate the product of all elements to the right of i
  (n-2).downto(0).each do |i|
    right_products[i] = right_products[i+1] * nums[i+1]
  end

  # Calculate the answer using left and right products
  (0...n).each do |i|
    answer[i] = left_products[i] * right_products[i]
  end

  return answer
end
