#!/usr/bin/env ruby

require "test/unit"

require_relative "../../src/Foliage"

class TC_Foliage_get_height < Test::Unit::TestCase
  def setup
    @foliage = Foliage.new
  end

  def test_height_of_zero_should_return_zero
    expected_height = 0
    @foliage.instance_variable_set(:@height, expected_height)
    actual_height = @foliage.get_height
    assert_equal(expected_height, actual_height)
  end

  def test_height_of_one_should_return_one
    expected_height = 1
    @foliage.instance_variable_set(:@height, expected_height)
    actual_height = @foliage.get_height
    assert_equal(expected_height, actual_height)
  end

  def test_height_of_negative_one_should_return_negative_one
    expected_height = -1
    @foliage.instance_variable_set(:@height, expected_height)
    actual_height = @foliage.get_height
    assert_equal(expected_height, actual_height)
  end

  def test_height_of_42_should_return_42
    expected_height = 42
    @foliage.instance_variable_set(:@height, expected_height)
    actual_height = @foliage.get_height
    assert_equal(expected_height, actual_height)
  end
end
