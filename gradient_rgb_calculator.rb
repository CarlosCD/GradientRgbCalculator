# frozen_string_literal: true

class GradientRgbCalculator
  class << self
    def intermediates(start_num, end_num, num_intermediates)
      start_ary = number_to_rgb(start_num)
      end_ary = number_to_rgb(end_num)
      increments_size = 1.0/(num_intermediates + 1.0)
      delta = 0.0  # increment
      result = []
      (1..num_intermediates).each do |i|
        delta += increments_size
        new_color = []
        new_color << ((1-delta)*start_ary[0] + delta*end_ary[0]).round
        new_color << ((1-delta)*start_ary[1] + delta*end_ary[1]).round
        new_color << ((1-delta)*start_ary[2] + delta*end_ary[2]).round
        result << rgb_ary_to_number(new_color)
      end
      result.collect(&:upcase)
    end

    private

    # Separates a number color code in a RGB triplet (Array of 3 Integers)
    def number_to_rgb(rgb_number)
      hex = rgb_number.to_s(16)  # Hex String
      if hex.size > 6
        raise 'rgb_number too large'
      elsif hex.size < 6
        hex = '0'*(6-hex.size) + hex
      end
      hex.scan(/.{2}/).collect{|s| s.to_i(16)}
    end

    # Converts an Array of 3 RBG Integers to their Hex String representation
    def rgb_ary_to_number(rgb_ary)
      if !rgb_ary.is_a?(Array)
        raise 'rgb_ary should be an Array of 3 numbers'
      else
        num_arrays = rgb_ary.select{|n| n.to_i == n}
        if rgb_ary.size != 3
          raise "rgb_ary should have 3 components, and has #{rgb_ary.size}"
        else
          rgb_ary.collect{|n| n.to_s(16)}.join
        end
      end
    end
  end
end
