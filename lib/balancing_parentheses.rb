require_relative './stack'

# your code here
def balancing_parentheses(string)
  stack = Stack.new
  string.chars.each do |s|
    if s == "("
      stack.push(s)
    else
      if stack.peek == "("
        stack.pop
      else
        stack.push(s)
      end
    end
  end
  stack.size
end