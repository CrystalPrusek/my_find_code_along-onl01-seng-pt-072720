collection = (1..100).to_a

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
  end
end
 my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }

def my_find2(collection)
  nu_array = []
  i = 0
  while i < collection.length
    nu_array.push(collection[i]) if yield(collection[i])
    i = i + 1
  end
  nu_array
end