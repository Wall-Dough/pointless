#!/usr/bin/env ruby

# A class to handle and draw the foliage of a tree.
# Drawing depends on the height and offset.
class Foliage
  @height
  @offset

  # Initializes the Foliage instance
  # Sets height and offset to default values of 0
  def initialize
    @height = 0
    @offset = 0
  end

  # Increases the height of the foliage by one
  # Returns self, the current Foliage instance
  def grow
    @height += 1
    return self
  end

  # Sets the height of the foliage
  # Height must not be negative
  # Raises RangeError if the height is negative
  # Returns self, the current Foliage instance
  def set_height(height)
    if (height < 0)
      raise RangeError, "Height of the foliage cannot be negative."
    end
    @height = height
    return self
  end

  # Returns the height of the foliage
  def get_height
    return @height
  end

  # Sets the offset of the foliage, in number of spaces
  # Offset must not be negative
  # Raises RangeError if the offset is negative
  # Returns self, the current Foliage instance
  def set_offset(offset)
    if (offset < 0)
      raise RangeError, "Offset of the foliage cannot be negative"
    end
    @offset = offset
    return self
  end

  # Returns the offset of the foliage, in number of spaces
  def get_offset
    return @offset
  end

  # Draws the foliage that is @height tall, with @offset offset
  # Returns the string representing the foliage
  # If the height is not positive, returns a single "leaf"
  # Raises RangeError if either the offset or the height is negative
  def draw
    if (@height < 0)
      raise RangeError, "Height of the foliage cannot be negative."
    end

    if (@offset < 0)
      raise RangeError, "Offset of the foliage cannot be negative"
    end

    # A recursive function to draw the foliage, with n height and o offset
    def draw_with_offset(n, o)
      if (n > 0)
        spaces = (" " * o)
        this_level = spaces + ("* " * (n - 1)) + "*\n"

        return draw_with_offset(n - 1, o + 1) + this_level
      end

      return ""
    end

    if (@height > 1)
      return draw_with_offset(@height, @offset)
    end

    spaces = ""
    if (@offset > 0)
      spaces = " " * @offset
    end

    return spaces + "*\n"
  end
end
