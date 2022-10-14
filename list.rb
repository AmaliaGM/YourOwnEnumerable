require 'enumerable'

grossery = Struct.new(:name, :color)
class Mylist
  include Myenumerable
  extend Forwardable
  def_delegators :@grossery, :amount, :size, :index

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end
