#!/usr/bin/env ruby

require "test/unit"

require_relative "../../src/Foliage.rb"

class TC_Foliage_set_height < Test::Unit::TestCase
  def setup
    @foliage = Foliage.new
    @initial_height = @foliage.instance_variable_get(:@height)
  end

  def test_zero_should_set_height_to_zero
    expected_new_height = 0
    @foliage.set_height(expected_new_height)
    actual_new_height = @foliage.instance_variable_get(:@height)
    assert_equal(expected_new_height, actual_new_height)
  end

  def test_one_should_set_height_to_one
    expected_new_height = 1
    @foliage.set_height(expected_new_height)
    actual_new_height = @foliage.instance_variable_get(:@height)
    assert_equal(expected_new_height, actual_new_height)
  end

  def test_42_should_set_height_to_42
    expected_new_height = 42
    @foliage.set_height(expected_new_height)
    actual_new_height = @foliage.instance_variable_get(:@height)
    assert_equal(expected_new_height, actual_new_height)
  end

  def test_one_then_zero_should_set_height_to_zero
    old_height = 1
    expected_new_height = 0
    @foliage.set_height(old_height)
    @foliage.set_height(expected_new_height)
    actual_new_height = @foliage.instance_variable_get(:@height)
    assert_equal(expected_new_height, actual_new_height)
  end

  def test_less_than_zero_should_raise_exception
    bad_height = -1
    assert_raise RangeError do
      @foliage.set_height(bad_height)
    end
  end

  def test_should_return_self
    assert_equal(@foliage, @foliage.set_height(0))
  end
end
