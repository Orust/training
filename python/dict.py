data = [[("key1", "value1"), ("key2", "value2")], [("key3", "value3"), ("key4", "value4")]]
dict_from_taple = [dict(taple_list) for taple_list in data]
print(dict_from_taple)

data = [[["key1", "value1"], ["key2", "value2"]], [["key3", "value3"], ["key4", "value4"]]]
dict_from_list = [dict(list) for list in data]
print(dict_from_list)