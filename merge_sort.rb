def merge_sort(array)
  if array.length <= 1
    return
  end 
  # split array into 2 halfs ~ divide & conquer
    mid = (array.length)/2
    left = array[0..(mid-1)]
    right = array[mid..-1]
  # recur on each half that you have just generated
    merge_sort(left) 
    merge_sort(right)
  # adjust array accordingly
    k = 0
    i = 0
    j = 0
    while i + j < left.length + right.length
      if i >= left.length
        array[k] = right[j]
        j += 1
      elsif j >= right.length
        array[k] = left[i]
        i += 1
      elsif left[i] < right[j]
        array[k] = left[i]
        i += 1
      else
        array[k] = right[j]
        j+=1
      end
      k += 1
    end
  return array
  end