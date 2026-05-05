#!/usr/bin/env ruby
# frozen_string_literal: true

# Disable minitest plugins to avoid Rails gem conflicts
# ENV['MT_NO_PLUGINS'] = '1'


# # Load the extension
# ext_path = ENV['ZIG_RB_TEST_EXT'] || ARGV[0]
# if ext_path.nil? || ext_path.empty?
#   puts "Error: Extension path not provided"
#   puts "Usage: ruby test/run_minitest.rb <path_to_extension.so>"
#   puts "   or: Set ZIG_RB_TEST_EXT environment variable"
#   exit 1
# end

ext_path = ARGV[0]

unless File.exist?(ext_path)
  puts "Error: Extension file not found: #{ext_path}"
  exit 1
end

require ext_path

require 'minitest/autorun'

class TestZigRbExtension < Minitest::Test
  def test_version_constant
    assert_equal '0.1.0', ZigRbTest::VERSION
  end

  def test_define_outer_for_module
    assert_equal ZigRbTest::OuterMod, ZigRbTest.const_get(:OuterMod)
    assert_equal ZigRbTest::OuterMod::InnerMod, ZigRbTest::OuterMod.const_get(:InnerMod)
  end

  def test_add
    assert_equal 5, ZigRbTest.add(2, 3)
    assert_equal 0, ZigRbTest.add(-5, 5)
    assert_equal -10, ZigRbTest.add(-3, -7)
    assert_equal 100, ZigRbTest.add(42, 58)
  end

  def test_multiply
    assert_equal 6, ZigRbTest.multiply(2, 3)
    assert_equal 0, ZigRbTest.multiply(5, 0)
    assert_equal -15, ZigRbTest.multiply(-3, 5)
    assert_equal 20, ZigRbTest.multiply(-4, -5)
  end

  def test_reverse_string
    assert_equal 'olleh', ZigRbTest.reverse_string('hello')
    assert_equal 'giz', ZigRbTest.reverse_string('zig')
    assert_equal '', ZigRbTest.reverse_string('')
    assert_equal 'a', ZigRbTest.reverse_string('a')
    assert_equal '!dlrow ,olleH', ZigRbTest.reverse_string('Hello, world!')
  end

  def test_array_sum
    assert_equal 10, ZigRbTest.array_sum([1, 2, 3, 4])
    assert_equal 0, ZigRbTest.array_sum([])
    assert_equal 5, ZigRbTest.array_sum([5])
    assert_equal 0, ZigRbTest.array_sum([-5, 5])
    assert_equal 15, ZigRbTest.array_sum([1, 2, 3, 4, 5])
  end

  def test_hash_merge_simple
    result = ZigRbTest.hash_merge_simple({ a: 1, b: 2 }, { c: 3, d: 4 })
    assert_equal({ a: 1, b: 2, c: 3, d: 4 }, result)

    result = ZigRbTest.hash_merge_simple({ a: 1 }, { a: 2 })
    assert_equal({ a: 2 }, result)

    result = ZigRbTest.hash_merge_simple({}, { x: 10 })
    assert_equal({ x: 10 }, result)
  end

  def test_is_even
    assert_equal true, ZigRbTest.is_even(2)
    assert_equal false, ZigRbTest.is_even(3)
    assert_equal true, ZigRbTest.is_even(0)
    assert_equal true, ZigRbTest.is_even(-4)
    assert_equal false, ZigRbTest.is_even(-7)
  end

  def test_factorial
    assert_equal 1, ZigRbTest.factorial(0)
    assert_equal 1, ZigRbTest.factorial(1)
    assert_equal 2, ZigRbTest.factorial(2)
    assert_equal 6, ZigRbTest.factorial(3)
    assert_equal 24, ZigRbTest.factorial(4)
    assert_equal 120, ZigRbTest.factorial(5)
    assert_equal 3628800, ZigRbTest.factorial(10)
  end

  def test_factorial_negative
    assert_raises(ArgumentError) do
      ZigRbTest.factorial(-1)
    end
  end

  def test_greet
    assert_equal 'Hello, World!', ZigRbTest.greet('World')
    assert_equal 'Hello, Zig!', ZigRbTest.greet('Zig')
    assert_equal 'Hello, !', ZigRbTest.greet('')
  end
end

class TestCounter < Minitest::Test
  def test_counter_constants
    assert_equal '1.0.0', Counter::VERSION
    assert_equal 1000000, Counter::MAX_VALUE
  end

  def test_counter_increment_decrement
    counter = Counter.new
    assert_equal 0, counter.get_count

    assert_equal 1, counter.increment
    assert_equal 1, counter.get_count

    assert_equal 2, counter.increment
    assert_equal 2, counter.get_count

    assert_equal 1, counter.decrement
    assert_equal 1, counter.get_count
  end

  def test_counter_set_count
    counter = Counter.new
    assert_equal 42, counter.set_count(42)
    assert_equal 42, counter.get_count

    assert_equal -10, counter.set_count(-10)
    assert_equal -10, counter.get_count
  end

  def test_counter_add
    counter = Counter.new
    assert_equal 5, counter.add(5)
    assert_equal 15, counter.add(10)
    assert_equal 10, counter.add(-5)
  end

  def test_counter_reset
    counter = Counter.new
    counter.set_count(100)
    assert_equal 0, counter.reset
    assert_equal 0, counter.get_count
  end
end

class TestCalculator < Minitest::Test
  def test_calculator_add
    calc = Calculator.new
    assert_equal 5.0, calc.add(2.0, 3.0)
    assert_equal 5.0, calc.last_result

    assert_equal 10.5, calc.add(7.5, 3.0)
    assert_equal 10.5, calc.last_result
  end

  def test_calculator_subtract
    calc = Calculator.new
    assert_equal 5.0, calc.subtract(10.0, 5.0)
    assert_equal 5.0, calc.last_result

    assert_equal -2.5, calc.subtract(1.0, 3.5)
    assert_equal -2.5, calc.last_result
  end

  def test_calculator_multiply
    calc = Calculator.new
    assert_equal 6.0, calc.multiply(2.0, 3.0)
    assert_equal 6.0, calc.last_result

    assert_equal 12.5, calc.multiply(2.5, 5.0)
    assert_equal 12.5, calc.last_result
  end

  def test_calculator_divide
    calc = Calculator.new
    assert_equal 2.0, calc.divide(10.0, 5.0)
    assert_equal 2.0, calc.last_result

    assert_equal 2.5, calc.divide(5.0, 2.0)
    assert_equal 2.5, calc.last_result
  end

  def test_calculator_divide_by_zero
    calc = Calculator.new
    assert_nil calc.divide(10.0, 0.0)
  end

  def test_calculator_singleton_methods
    assert_in_delta 3.14159, Calculator.pi, 0.00001
    assert_in_delta 2.71828, Calculator.e, 0.00001
  end
end

class TestStringProcessor < Minitest::Test
  def test_reverse
    sp = StringProcessor.new
    assert_equal 'olleh', sp.reverse('hello')
    assert_equal 'giz', sp.reverse('zig')
    assert_equal '', sp.reverse('')
    assert_equal '!dlrow ,olleH', sp.reverse('Hello, world!')
  end

  def test_upcase
    sp = StringProcessor.new
    assert_equal 'HELLO', sp.upcase('hello')
    assert_equal 'ZIG', sp.upcase('zig')
    assert_equal 'HELLO WORLD!', sp.upcase('Hello World!')
    assert_equal '', sp.upcase('')
  end

  def test_downcase
    sp = StringProcessor.new
    assert_equal 'hello', sp.downcase('HELLO')
    assert_equal 'zig', sp.downcase('ZIG')
    assert_equal 'hello world!', sp.downcase('Hello World!')
    assert_equal '', sp.downcase('')
  end

  def test_length
    sp = StringProcessor.new
    assert_equal 5, sp.length('hello')
    assert_equal 0, sp.length('')
    assert_equal 13, sp.length('Hello, world!')
    assert_equal 3, sp.length('zig')
  end
end

class TestTypeTester < Minitest::Test
  def test_echo_int
    tt = TypeTester.new
    assert_equal 42, tt.echo_int(42)
    assert_equal -10, tt.echo_int(-10)
    assert_equal 0, tt.echo_int(0)
  end

  def test_echo_float
    tt = TypeTester.new
    assert_equal 3.14, tt.echo_float(3.14)
    assert_equal -2.5, tt.echo_float(-2.5)
    assert_equal 0.0, tt.echo_float(0.0)
  end

  def test_echo_string
    tt = TypeTester.new
    assert_equal 'hello', tt.echo_string('hello')
    assert_equal '', tt.echo_string('')
    assert_equal 'test', tt.echo_string('test')
  end

  def test_echo_bool
    tt = TypeTester.new
    assert_equal true, tt.echo_bool(true)
    assert_equal false, tt.echo_bool(false)
  end

  def test_is_nil
    tt = TypeTester.new
    assert_equal true, tt.is_nil(nil)
    assert_equal false, tt.is_nil(0)
    assert_equal false, tt.is_nil(false)
    assert_equal false, tt.is_nil('')
  end

  def test_get_type
    tt = TypeTester.new
    assert_equal 'nil', tt.get_type(nil)
    assert_equal 'fixnum', tt.get_type(42)
    assert_equal 'float', tt.get_type(3.14)
    assert_equal 'string', tt.get_type('hello')
    assert_equal 'array', tt.get_type([1, 2, 3])
    assert_equal 'hash', tt.get_type({ a: 1 })
    assert_equal 'symbol', tt.get_type(:test)
    assert_equal 'true', tt.get_type(true)
    assert_equal 'false', tt.get_type(false)
  end
end

class TestErrorTester < Minitest::Test
  def test_zig_error_class_exists
    assert defined?(ZigError), "ZigError class should be defined"
    assert ZigError < StandardError, "ZigError should inherit from StandardError"
  end

  def test_test_error_class_exists
    assert defined?(TestError), "TestError class should be defined"
    assert TestError < StandardError, "TestError should inherit from StandardError"
  end

  def test_may_fail_success
    et = ErrorTester.new
    assert_equal 20, et.may_fail(10)
    assert_equal 0, et.may_fail(0)
    assert_equal 200, et.may_fail(100)
  end

  def test_may_fail_invalid_input
    et = ErrorTester.new
    err = assert_raises(TestError) { et.may_fail(-1) }
    assert_match(/InvalidInput/, err.message)
  end

  def test_may_fail_out_of_range
    et = ErrorTester.new
    err = assert_raises(TestError) { et.may_fail(101) }
    assert_match(/OutOfRange/, err.message)
  end

  def test_always_succeeds
    et = ErrorTester.new
    assert_equal 43, et.always_succeeds(42)
    assert_equal 1, et.always_succeeds(0)
  end

  def test_always_fails
    et = ErrorTester.new
    err = assert_raises(TestError) { et.always_fails(0) }
    assert_match(/NotFound/, err.message)
  end

  def test_fallback_to_zig_error_with_anyerror
    et = ErrorTester.new
    err = assert_raises(ZigError) { et.fails_with_anyerror(0) }
    assert_match(/InvalidInput/, err.message)
    assert_equal :InvalidInput, err.value
    assert_match(/anyerror/, err.type)
  end

  def test_fallback_to_zig_error_with_unregistered
    et = ErrorTester.new
    err = assert_raises(ZigError) { et.fails_with_unregistered(0) }
    assert_match(/SomeError/, err.message)
    assert_equal :SomeError, err.value
    assert_match(/SomeError/, err.type)
  end

  def test_explicit_raise_success
    et = ErrorTester.new
    assert_equal 42, et.explicit_raise(42)
    assert_equal 0, et.explicit_raise(0)
  end

  def test_explicit_raise_with_formatted_message
    et = ErrorTester.new
    err = assert_raises(TestError) { et.explicit_raise(-5) }
    assert_match(/Value must be non-negative, got -5/, err.message)
  end
end
