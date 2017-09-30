#!/usr/bin/env ruby

require "test/unit"

require_relative "../../src/Foliage.rb"

class TC_Foliage_grow < Test::Unit::TestCase
  def setup
    @foliage = Foliage.new
    @initial_height = @foliage.instance_variable_get(:@height)
  end

  def test_once_should_increase_height_by_one
    expected_new_height = @initial_height + 1
    @foliage.grow
    actual_new_height = @foliage.instance_variable_get(:@height)
    assert_equal(expected_new_height, actual_new_height)
  end

  def test_twice_should_increase_height_by_two
    expected_new_height = @initial_height + 2
    @foliage.grow
    @foliage.grow
    actual_new_height = @foliage.instance_variable_get(:@height)
    assert_equal(expected_new_height, actual_new_height)
  end

  def test_should_return_self
    assert_equal(@foliage, @foliage.grow)
  end

  def test_chained_twice_should_increase_height_by_two
    expected_new_height = @initial_height + 2
    @foliage.grow.grow
    actual_new_height = @foliage.instance_variable_get(:@height)
    assert_equal(expected_new_height, actual_new_height)
  end
end
