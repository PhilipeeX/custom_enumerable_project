module Enumerable
  # Your code goes her

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
