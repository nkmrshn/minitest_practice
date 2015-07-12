require "minitest_practice/version"

module MinitestPractice
  class MyClass
    def odd?(value)
      value % 2 == 1
    end

    def check_number?(value)
      value.is_a?(Numeric) && value.to_s.length == 4 && value % 2 == 0
    end

    def enough_length?(value)
      value.is_a?(String) && value.length.between?(3, 8)
    end

    def divide(numerator, denominator)
      raise Exception.new() if denominator == 0
      numerator / denominator
    end

    def fizz_buzz(value)
      result = value % 3 == 0 ? 'Fizz' : ''
      result += 'Buzz' if value % 5 == 0

      return result
    end

    def hello
      print 'Hello'
    end
  end
end
