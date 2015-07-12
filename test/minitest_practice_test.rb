require 'test_helper'

class MinitestPracticeTest < Minitest::Test
  def setup
    @my_class = ::MinitestPractice::MyClass.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MinitestPractice::VERSION
  end

  def test_odd?
    assert_equal false, @my_class.odd?(0)
    assert_equal true,  @my_class.odd?(1)
    assert_equal false, @my_class.odd?(2)
    assert_equal true,  @my_class.odd?(3)
  end

  def test_check_number?
    assert_equal false, @my_class.check_number?('a')
    assert_equal false, @my_class.check_number?('a' * 4)
    assert_equal false, @my_class.check_number?(1)
    assert_equal false, @my_class.check_number?(10)
    assert_equal false, @my_class.check_number?(100)
    assert_equal true,  @my_class.check_number?(1000)
    assert_equal false, @my_class.check_number?(1001)
    assert_equal false, @my_class.check_number?(10000)
  end

  def test_enough_length?
    assert_equal false, @my_class.enough_length?(10 ** 2)
    assert_equal false, @my_class.enough_length?(10 ** 7)
    assert_equal false, @my_class.enough_length?('a' * 2)
    assert_equal true,  @my_class.enough_length?('a' * 3)
    assert_equal true,  @my_class.enough_length?('a' * 8)
    assert_equal false, @my_class.enough_length?('a' * 9)
  end

  def test_divide
    assert_equal 2,     @my_class.divide(4, 2)
    assert_equal 5 / 3, @my_class.divide(5, 3)
    assert_raises(Exception) { @my_class.divide(1, 0) }
  end

  def test_fizz_buzz
    assert_equal 'Fizz',     @my_class.fizz_buzz(3)
    assert_equal 'Buzz',     @my_class.fizz_buzz(5)
    assert_equal 'FizzBuzz', @my_class.fizz_buzz(15)
  end

  def test_hello
    assert_includes capture_io { @my_class.hello }, 'Hello'
    assert_output('Hello') { @my_class.hello }
  end
end
