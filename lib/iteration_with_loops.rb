def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays

new_array = []
outer_count = 0
while outer_count < src.length do
  inner_count = 0
  minimum_temp = 1000
  while inner_count < src[outer_count].length do
    if src[outer_count][inner_count] < minimum_temp
      minimum_temp = src[outer_count][inner_count]
    end
    inner_count += 1
  end
  new_array << minimum_temp
  outer_count += 1
end
new_array
end