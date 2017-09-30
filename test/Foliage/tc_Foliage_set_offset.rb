#!/usr/bin/env ruby

require "test/unit"

require_relative "../../src/Foliage.rb"

class TC_Foliage_set_offset < Test::Unit::TestCase
  def setup
    @foliage = Foliage.new
    @initial_offset = @foliage.instance_variable_get(:@offset)
  end

  def test_zero_should_set_offset_to_zero
    expected_new_offset = 0
    @foliage.set_offset(expected_new_offset)
    actual_new_offset = @foliage.instance_variable_get(:@offset)
    assert_equal(expected_new_offset, actual_new_offset)
  end

  def test_one_should_set_offset_to_one
    expected_new_offset = 1
    @foliage.set_offset(expected_new_offset)
    actual_new_offset = @foliage.instance_variable_get(:@offset)
    assert_equal(expected_new_offset, actual_new_offset)
  end

  def test_42_should_set_offset_to_42
    expected_new_offset = 42
    @foliage.set_offset(expected_new_offset)
    actual_new_offset = @foliage.instance_variable_get(:@offset)
    assert_equal(expected_new_offset, actual_new_offset)
  end

  def test_one_then_zero_should_set_offset_to_zero
    old_offset = 1
    expected_new_offset = 0
    @foliage.set_offset(old_offset)
    @foliage.set_offset(expected_new_offset)
    actual_new_offset = @foliage.instance_variable_get(:@offset)
    assert_equal(expected_new_offset, actual_new_offset)
  end

  def test_less_than_zero_should_raise_exception
    bad_offset = -1
    assert_raise RangeError do
      @foliage.set_offset(bad_offset)
    end
  end

  def test_should_return_self
    assert_equal(@foliage, @foliage.set_offset(0))
  end
end
