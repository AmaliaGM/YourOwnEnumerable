require_relative 'list'

puts('Passed Values: @list=[1, 2, 3, 4]')
list = Mylist.new(1, 2, 3, 4)

puts("\n--any? results--")
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts("\n--any? results without block--")
print list.any?

puts("\n\n--all? results--")
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts("\n--all? results without block--")
print list.all?

puts("\n\n--filter results--")
p list.filter(&:even?)
puts("\n--filter results without block--")
p list.filter
require_relative 'enumerable'

class Mylist
  include my_enumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end
