
def fibs(n)
  array = []
  for i in (1..n) do
    array.push(0) if i==1
    array.push(1) if i==2
    array.push(array[-1]+array[-2]) if i>2
  end
  array
end

#p fibs(8)

def fibs_rec(n)
return [0] if n == 1
return [0,1] if n == 2
array = fibs_rec(n-1)
return array.push(array[-1]+array[-2])
end

#p fibs_rec(8)

def merge_sort(array)
  return array if array.length == 1

  sub_length = array.length / 2
  sub_array1 = merge_sort(array[0..sub_length - 1])
  sub_array2 = merge_sort(array[sub_length..-1])
  merge_sort_two(sub_array1, sub_array2)
end

def merge_sort_two(left, right)
  temp = []
  until left.empty? && right.empty?
    return temp += right if left.empty?

    return temp += left if right.empty?

    if left[0] <= right[0]
      temp.push(left[0])
      left = left.drop(1)
    else
      temp.push(right[0])
      right = right.drop(1)
    end
  end
  temp
end

test_array = [18, 3, 5, 2, 9, 4, 1, 7]
test_array2 = [18, 3, 2, 9, 4, 1, 7]
p merge_sort(test_array)
p merge_sort(test_array2)
