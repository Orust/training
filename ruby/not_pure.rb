$a = 10

def not_pure_mul(b)
  $a * b
end

def not_pure_plus(b)
  $a = b
  $a + b
end

puts not_pure_mul(2) # => 20
puts $a # => 10

puts not_pure_plus(3) # => 6
puts $a # => 3
