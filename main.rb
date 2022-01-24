number = 978014300723

def isbn13(number)
  v = number.digits.reverse.each_with_index.inject(0) do |n, (digit, index)|
    n += digit * ((index % 2) == 0 ? 1 : 3)
  end
  (number * 10) + (10 - (v  % 10)) % 10
end

isbn13(number)
#  => 9780143007234
