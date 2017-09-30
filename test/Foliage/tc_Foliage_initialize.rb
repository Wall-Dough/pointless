#!/usr/bin/env ruby

require "test/unit"

require_relative "../../src/Foliage.rb"

class TC_Foliage_initialize < Test::Unit::TestCase
  def setup
    @foliage = Foliage.new
  end

  def test_height_should_be_zero
    expected = 0
    actual = @foliage.instance_variable_get(:@height)
    assert_equal(expected, actual)
  end

  def test_offset_should_be_zero
    expected = 0
    actual = @foliage.instance_variable_get(:@offset)
    assert_equal(expected, actual)
  end
end
