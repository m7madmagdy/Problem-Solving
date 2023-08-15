# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
    stack = []
    operations.each do |op|
        if op == "+"
            stack.push(stack[-1] + stack[-2])
        elsif op == "D"
            stack.push(stack[-1] * 2)
        elsif op == "C"
            stack.pop
        else
            stack.push(op.to_i)
        end
    end
    stack.sum
end