module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    self.each { |item| yield item }
  end

  # define my_each with index
  def my_each_with_index
    self.each_with_index { |item, index| yield item, index }
  end
  # define my_select
  def my_select
    self.select { |item| yield item }
  end
  # define my_all
  def my_all?
    self.all? { |item| yield item }
  end
  # define my_any
  def my_any?
    self.any? { |item| yield item }
  end
  # define my_none
  def my_none?
    self.none? { |item| yield item }
  end
  # define my_count
  def my_count
    if block_given?
      self.count { |item| yield item}
    else
      self.size { |item| yield item}
    end
  end
  # define my_map
  def my_map
    self.map { |item| yield item }
  end
  # define my_inject
  def my_inject(initial = nil, sym = nil)
    if block_given?
      self.inject(initial) { |acc, item| yield acc, item }
    end
  end
end
