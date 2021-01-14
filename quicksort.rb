# Slower version, not-in-place
def quick_sort(array)
  if array.length > 1
    pivot = array.pop
    left = []
    right = []
    array.each do |value|
      value <= pivot ? left.push(value) : right.push(value)
    end

    array = quick_sort(left) + [pivot] + quick_sort(right)
  end

  array
end

unsorted_array = (1..20).to_a.shuffle
time1 = Time.now
sorted1 = quick_sort(unsorted_array.dup)
time2 = Time.now
puts <<~HEREDOC
  QUICK_SORT SORTED CORRECTLY: #{sorted1 == unsorted_array.sort}
  #{time2 - time1}sec
  unsorted: #{unsorted_array}
  sorted: #{sorted1}\n
HEREDOC

# Other solutions:

# def quicksort(*ary)
#   return [] if ary.empty?

#   pivot = ary.delete_at(rand(ary.size))
#   left, right = ary.partition(&pivot.:>)

#   return *quicksort(*left), pivot, *quicksort(*right)
# end

# ---

# class Array
#   def quick_sort
#     return self if length <= 1
#     pivot = self[0]
#     less, greatereq = self[1..-1].partition { |x| x < pivot }
#     less.quick_sort + [pivot] + greatereq.quick_sort
#   end
# end

# or

# class Array
#   def quick_sort
#     return self if length <= 1
#     pivot = sample
#     group = group_by{ |x| x <=> pivot }
#     group.default = []
#     group[-1].quick_sort + group[0] + group[1].quick_sort
#   end
# end

# or functionally

# class Array
#   def quick_sort
#     h, *t = self
#     h ? t.partition { |e| e < h }.inject { |l, r| l.quick_sort + [h] + r.quick_sort } : []
#   end
# end
