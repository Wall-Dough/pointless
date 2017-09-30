#!/usr/bin/env ruby

require "test/unit"

require_relative "../../src/Foliage.rb"

class TC_Foliage_draw < Test::Unit::TestCase
  def setup
    @foliage = Foliage.new
  end

  def test_zero_height_zero_offset
    test_height = 0
    test_offset = 0
    expected_foliage = "*\n"
    @foliage.instance_variable_set(:@height, test_height)
    @foliage.instance_variable_set(:@offset, test_offset)
    actual_foliage = @foliage.draw
    assert_equal(expected_foliage, actual_foliage)
  end

  def test_zero_height_one_offset
    test_height = 0
    test_offset = 1
    expected_foliage = " *\n"
    @foliage.instance_variable_set(:@height, test_height)
    @foliage.instance_variable_set(:@offset, test_offset)
    actual_foliage = @foliage.draw
    assert_equal(expected_foliage, actual_foliage)
  end

  def test_zero_height_five_offset
    test_height = 0
    test_offset = 5
    expected_foliage = "     *\n"
    @foliage.instance_variable_set(:@height, test_height)
    @foliage.instance_variable_set(:@offset, test_offset)
    actual_foliage = @foliage.draw
    assert_equal(expected_foliage, actual_foliage)
  end

  def test_one_height_zero_offset
    test_height = 1
    test_offset = 0
    expected_foliage = "*\n"
    @foliage.instance_variable_set(:@height, test_height)
    @foliage.instance_variable_set(:@offset, test_offset)
    actual_foliage = @foliage.draw
    assert_equal(expected_foliage, actual_foliage)
  end

  def test_one_height_one_offset
    test_height = 1
    test_offset = 1
    expected_foliage = " *\n"
    @foliage.instance_variable_set(:@height, test_height)
    @foliage.instance_variable_set(:@offset, test_offset)
    actual_foliage = @foliage.draw
    assert_equal(expected_foliage, actual_foliage)
  end

  def test_one_height_five_offset
    test_height = 1
    test_offset = 5
    expected_foliage = "     *\n"
    @foliage.instance_variable_set(:@height, test_height)
    @foliage.instance_variable_set(:@offset, test_offset)
    actual_foliage = @foliage.draw
    assert_equal(expected_foliage, actual_foliage)
  end

  def test_five_height_zero_offset
    test_height = 5
    test_offset = 0
    expected_foliage =  "    *\n" +
                        "   * *\n" +
                        "  * * *\n" +
                        " * * * *\n" +
                        "* * * * *\n"
    @foliage.instance_variable_set(:@height, test_height)
    @foliage.instance_variable_set(:@offset, test_offset)
    actual_foliage = @foliage.draw
    assert_equal(expected_foliage, actual_foliage)
  end

  def test_five_height_one_offset
    test_height = 5
    test_offset = 1
    expected_foliage =  "     *\n" +
                        "    * *\n" +
                        "   * * *\n" +
                        "  * * * *\n" +
                        " * * * * *\n"
    @foliage.instance_variable_set(:@height, test_height)
    @foliage.instance_variable_set(:@offset, test_offset)
    actual_foliage = @foliage.draw
    assert_equal(expected_foliage, actual_foliage)
  end

  def test_five_height_five_offset
    test_height = 5
    test_offset = 5
    expected_foliage =  "         *\n" +
                        "        * *\n" +
                        "       * * *\n" +
                        "      * * * *\n" +
                        "     * * * * *\n"
    @foliage.instance_variable_set(:@height, test_height)
    @foliage.instance_variable_set(:@offset, test_offset)
    actual_foliage = @foliage.draw
    assert_equal(expected_foliage, actual_foliage)
  end
end
