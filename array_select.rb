list = [1,4,2,4,6,7,8,2,3,2,1,6]
list2 = [1, 2, 3, 4, 5]
# ans = 0

# list.each do |i|
#   ans += i if i % 2 == 0 && i > 3
# end

# p ans

# a = list.select{|i| i.even? && i > 3}.sum

# p a

def my_select(list)
  newList = []
  list.each do |i|
    if yield i
      newList << i
    end
  end
  return newList
end

# p my_select([ 1, 2 , 3, 4, 5]){ |i| i.odd? }


def my_map(list)
  newList = []
  list.each do |i|
    newList << (yield i)
  end
  return newList
end

# p my_map(list2){ |i| i * 2 }

def my_reject(list)
  newList = []
  list.each do |i|
    unless yield i
      newList << i
    end
  end
  return newList
end

# p my_reject(list2) { |i| i.odd? }

double = Proc.new { |i| i * 2 }

p list2.map(&double)