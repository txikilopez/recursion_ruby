
# def merge(left_ar = [], right_ar = [], output_arr = [])
#   if right_ar.nil?
#     right_ar = []
#   # elsif left_ar.nil?
#   #   left_ar = []
#   end
#   left_len = left_ar.length - 1
#   right_len = right_ar.length - 1
#   i = 0
#   j = 0
#   while i <= left_len
#     while j <= right_len
#       if i > left_len
#         output_arr << right_ar[j..right_len]
#         j = right_len + 1
#         break
#       end
#       minval = [left_ar[i], right_ar[j]].min
#       output_arr << minval  
#       left_ar[i] > right_ar[j] ? j += 1 : i+=1
#     end
#     if j >= right_len
#       output_arr << left_ar[i..left_len]
#       i = left_len + 1
#     end
#   end
#   output_arr.flatten
# end
#  p merge([1,2,10,22],nil)


#Solution reviewed merge

def better_merge(left_ar, right_ar)
  merged_ar = []
  if right_ar.nil?
    right_ar = []
  end 
  
  while !left_ar.empty? && !right_ar.empty? #Notice the not
    if left_ar[0] < right_ar[0]
      merged_ar << left_ar.shift
    else
      merged_ar << right_ar.shift
    end
  end
  merged_ar + left_ar + right_ar
end

# p better_merge([1,2,3],[1,1,20,30])

def merge_sort(array)
  arr_length = array.length - 1

  if arr_length >= 1
    left_ar = merge_sort(array[0..arr_length/2])
    right_ar = merge_sort(array[arr_length/2+1..-1])
      # p "left: #{left}, right: #{right}"
    better_merge(left_ar,right_ar)
        # p "left: #{left_ar}, right: #{right_ar}"
  else
    array

  end
end

a = [6, 4, 2, 1, 1, 1]
puts "Array a: #{a} sorted is:"
p merge_sort(a)

b = [105, 79, 100, 110, 3, 6, 109, 4]
puts "\nArray b: #{b} sorted is:"
p merge_sort(b)