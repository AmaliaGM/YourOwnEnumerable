module Myenumerable
  def any?
  return 'No block supplied' unless block_given?

      each do |item|
        return true if yield item
      end
      false
  end

  def all?
  return 'No block supplied' unless block_given?

      each { |item| return false unless yield item }
      true
  end

  def filter
  rt = []
      return rt.to_enum unless block_given?

      each do |item|
        rt.push(item) if yield item
      end

      rt
  end
end
