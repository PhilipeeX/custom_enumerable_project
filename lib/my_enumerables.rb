module Enumerable
  # Your code goes her
  def my_each_with_index
    if block_given?
      i = 0
      until i == self.length
        # require 'pry-byebug'; binding.pry
        yield(self[i], i)
        i += 1
      end
    end
    self
  end

  def my_all?
    if block_given?
      i = 0
      until i == self.length
        if yield(self[i])
          i += 1
        else
          return false
        end
      end
      return true
    end
  end

  def my_any?
    if block_given?
      i = 0
      until i == self.length
        if yield(self[i])
          return true
        end
          i += 1
      end
      return false
    end
  end

  def my_count
    if block_given?
      i = 0
      count = 0
      while i < self.length
        if yield(self[i])
          count += 1
        end
        i +=1
      end
      return count
    else
      return self.size
    end
  end

  def my_inject(initial_value)
    if block_given?
      @result = initial_value
      i = 0
      # require 'pry-byebug'; binding.pry
      while i < self.length
        @result = yield(@result, self[i])
        i += 1
      end
      return @result
    end
  end

  def my_map
    if block_given?
      i = 0
      while i < self.length
        self[i] = yield(self[i])
        i += 1
      end
      return self
    else
      #retorna enumerator

    end
  end

  def my_none?
    if block_given?
      i = 0
      while i < self.length
        if yield(self[i])
          return false
        end
        i += 1
      end
      return true
    end
  end

  def my_select
    if block_given?
      i = 0
      new_array = []
      while i < self.length
        if yield(self[i])
          new_array << self[i]
        end
        i += 1
      end
      return new_array
    else
      self
    end
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    if block_given?
      i = 0
      until i == self.length do 
        # require 'pry-byebug'; binding.pry
        yield(self[i])
        i += 1
      end
    end
    self
  end
end
