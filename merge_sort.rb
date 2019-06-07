def merge_sort(list)
  if list.length <= 1
    return list #Base Case
  else
    merged_left = merge_sort(list[0...list.length/2])               #looks at left half of array
    merged_right = merge_sort(list[list.length/2..list.length])     #looks at right half of array
    merge(merged_left, merged_right)                                #calls merge method
  end
end
    

def merge(left, right)
  merged_list = []                                                  #starts off empty
  until left.empty? || right.empty?                                 #shifts elements into the merged_list depending on comparison outcome
    if left.first <= right.first
      merged_list << left.shift
    else
      merged_list << right.shift
    end
  end

  merged_list += left + right                                       #this ensures that whatever is left over after all the comaprisons have been made
                                                                    #so a single element in the left or a single element in the right 
end                                                                 #is added to the merged_list with this little sum

p merge_sort([1,2,3,4,5,9,6])
p merge_sort([5,4,3,2,1])
p merge_sort([1,3,1,6,10,14,12,2,2])