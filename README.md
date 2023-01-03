# Gradient RGB Calculator

Short Ruby program to calculate RGB codes between two different colors (gradient).

Example of usage: 8 color codes in a gradient between green and orange (weird choice, I know):

    ruby -v
      ruby 3.2.0 (2022-12-25 revision a528908271) [x86_64-darwin21]
    irb
      load 'gradient_rgb_calculator.rb'
      green = 0x77DD77
      orange = 0xFFB347
      GradientRgbCalculator.intermediates(green, orange, 8)
        => ["86D872", "95D46C", "A4CF67", "B3CA62", "C3C65C", "D2C157", "E1BC52", "F0B84C"]
      exit
