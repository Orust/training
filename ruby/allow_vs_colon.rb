hash1 = {"a" => 1}
hash2 = {"a": 1}

p hash1["a"]
p hash1[:a]

p hash2["a"]
p hash2[:a]

# 1
# nil
# nil
# 1