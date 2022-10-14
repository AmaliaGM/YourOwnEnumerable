require_relative 'enumerable'

class Mylist
  include Myenumerable
  
  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end
