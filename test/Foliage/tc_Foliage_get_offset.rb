#!/usr/bin/env ruby

require "test/unit"

require_relative "../../src/Foliage"

class TC_Foliage_get_offset < Test::Unit::TestCase
  def setup
    @foliage = Foliage.new
  end

  def test_offset_of_zero_should_return_zero
    expected_offset = 0
    @foliage.instance_variable_set(:@offset, expected_offset)
    actual_offset = @foliage.get_offset
    assert_equal(expected_offset, actual_offset)
  end

  def test_offset_of_one_should_return_one
    expected_offset = 1
    @foliage.instance_variable_set(:@offset, expected_offset)
    actual_offset = @foliage.get_offset
    assert_equal(expected_offset, actual_offset)
  end

  def test_offset_of_negative_one_should_return_negative_one
    expected_offset = -1
    @foliage.instance_variable_set(:@offset, expected_offset)
    actual_offset = @foliage.get_offset
    assert_equal(expected_offset, actual_offset)
  end

  def test_offset_of_42_should_return_42
    expected_offset = 42
    @foliage.instance_variable_set(:@offset, expected_offset)
    actual_offset = @foliage.get_offset
    assert_equal(expected_offset, actual_offset)
  end
end
