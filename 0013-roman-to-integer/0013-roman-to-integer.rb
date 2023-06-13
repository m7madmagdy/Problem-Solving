# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
  result = 0

  s.chars.each_with_index do |char, index|
    if roman[s[index + 1]] && roman[char] < roman[s[index + 1]]
      result -= roman[char]
    else
      result += roman[char]
    end
  end

  result
end