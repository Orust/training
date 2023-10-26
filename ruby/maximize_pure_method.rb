$db = {}

def hoge
  # ...
  1000
end

# Original
def method1
  # ...
  method2
end

def method2
  # ...
  method3
end

def method3
  fuga = hoge
  current_time = Time.now.to_i % 1000
  $db['orig'] = fuga - current_time
  fuga - current_time
end

# Good
def method1g
  # ...
  current_time = Time.now.to_i % 1000
  $db['good'] = method2g(current_time)
end

def method2g(current_time)
  # ...
  method3g(current_time)
end

def method3g(current_time)
  fuga = hoge
  fuga - current_time
end

method1
method1g

puts $db['orig']
puts $db['good'] 