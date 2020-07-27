def ceaser_cipher(string,num)
  upper_case=("A".."Z").to_a
  lower_case=("a".."z").to_a
  s=""
  string.each_char do |a|
    if upper_case.include?(a)
     s+= upper_case[(upper_case.index(a)+num)%26]
    elsif lower_case.include?(a)
      s+= lower_case[(lower_case.index(a)+num)%26]
    else
      s+= a
    end
  end
  return s
end
puts ("Enter the string!")
string = gets.chomp()
puts ("Enter the number!!")
num= gets.chomp().to_i

puts (ceaser_cipher(string,num))
