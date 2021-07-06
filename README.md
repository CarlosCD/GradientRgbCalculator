# Gradient RGB Calculator

Short Ruby program to calculate RGB codes between two different colors (gradient).

Example of usage: 8 color codes in a gradient between green and orange (weird choice, I know):

    ruby -v
      ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [x86_64-darwin20]
    irb
      load 'gradient_rgb_calculator.rb'
      green = 0x77DD77
      orange = 0xFFB347
      GradientRgbCalculator.intermediates(green, orange, 8)
        => ["86D872", "95D46C", "A4CF67", "B3CA62", "C3C65C", "D2C157", "E1BC52", "F0B84C"]
      exit
