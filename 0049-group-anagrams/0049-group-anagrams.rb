# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
   strs.group_by { |word| word.chars.sort }.values
end
