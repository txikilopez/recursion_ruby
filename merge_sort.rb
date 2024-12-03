
def merge(left_ar = [], right_ar = [], output_arr = [])
  if right_ar.nil?
    right_ar = []
  end
  left_len = left_ar.length - 1
  right_len = right_ar.length - 1
  i = 0
  j = 0
  while i <= left_len
    while j <= right_len
      if i > left_len
        output_arr << right_ar[j..right_len]
        j = right_len + 1
        break
      end
      minval = [left_ar[i], right_ar[j]].min
      output_arr << minval  
      left_ar[i] > right_ar[j] ? j += 1 : i+=1
    end
    if j >= right_len
      output_arr << left_ar[i..left_len]
      i = left_len + 1
    end
  end
  output_arr.flatten
end
#  p merge([1,2,10,22],nil)


def merge_sort(array)
  arr_length = array.length - 1
  # p "top #{arr_length}"

  if arr_length > 1
    left = array[0..arr_length/2]
    right = array[arr_length/2+1..-1]
      # p "left: #{left}, right: #{right}"
    merge(merge_sort(left),merge_sort(right))
        # p "left: #{left}, right: #{right}"
  elsif arr_length == 1
    # p "in elsif #{arr_length}"
    left = array[0]
    right = array[-1]
    subarray_sorted = left < right ? [left, right] : [right, left]
  end
end

a = [3, 2, 1, 13, 8, 5, 0, 1,123]
p merge_sort(a)

b = [105,79,100,2]
p merge_sort(b)