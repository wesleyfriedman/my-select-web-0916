def my_select(collection)
  stored_nums = []
  if block_given?
    i = 0
    while i < collection.length
      if yield(collection[i])
        stored_nums << collection[i]
      end
      i = i + 1
    end
    return stored_nums
  end
end
