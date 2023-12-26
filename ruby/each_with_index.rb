nums = [1, 2, 3]

nums.each_with_index do |num, i|
    p "(i, num): (#{i}, #{num})"
end

# "(i, num): (0, 1)"
# "(i, num): (1, 2)"
# "(i, num): (2, 3)"

nums.each.with_index(1) do |num, i|
    p "(i, num): (#{i}, #{num})"
end

# "(i, num): (1, 1)"
# "(i, num): (2, 2)"
# "(i, num): (3, 3)"

nums[1..2].each_with_index do |num, i|
    p "(i, num): (#{i}, #{num})"
end

# "(i, num): (0, 2)"
# "(i, num): (1, 3)"

nums[1..1].each_with_index do |num, i|
    p "(i, num): (#{i}, #{num})"
end

# "(i, num): (0, 2)"

nums[1, 2].each_with_index do |num, i|
    p "(i, num): (#{i}, #{num})"
end

# "(i, num): (0, 2)"
# "(i, num): (1, 3)"

nums[1, 1].each_with_index do |num, i|
    p "(i, num): (#{i}, #{num})"
end

# "(i, num): (0, 2)"

nums[0, 3].each_with_index do |num, i|
    p "(i, num): (#{i}, #{num})"
end

# "(i, num): (0, 1)"
# "(i, num): (1, 2)"
# "(i, num): (2, 3)"

nums[0, 2].each.with_index(1) do |num, i|
    p "(i, num): (#{i}, #{num})"
end

# "(i, num): (1, 1)"
# "(i, num): (2, 2)"

nums[1, 2].each.with_index(1) do |num, i|
    p "(i, num): (#{i}, #{num})"
end

# "(i, num): (1, 2)"
# "(i, num): (2, 3)"

nums[0...2].each_with_index do |num, i|
    p "(i, num): (#{i}, #{num})"
end

# "(i, num): (0, 1)"
# "(i, num): (1, 2)"