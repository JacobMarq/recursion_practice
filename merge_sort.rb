my_arr = [5,2,4,1,7,9,6,8,0,3]

def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..arr.length])
  sorted = []
  sorted << (left.first <= right.first ? left.shift : right.shift) until left.empty? || right.empty?
  sorted + left + right
end

p merge_sort(my_arr)
