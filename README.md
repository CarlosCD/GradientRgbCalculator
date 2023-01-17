# Gradient RGB Calculator

Short Ruby program to calculate RGB color codes between two given values (useful to build an explicit color gradient).
The returned values are hexadecimal Strings.

Tested both with Ruby 3.0.0 and 3.2.0 (it probably works with other recent Ruby versions):

    ruby -v
      ruby 3.2.0 (2022-12-25 revision a528908271) [x86_64-darwin21]

Example of usage: get 8 color codes in a gradient between green and orange:

    irb
      > load 'gradient_rgb_calculator.rb'
      > green  = 0x77DD77
      > orange = 0xFFB347
      > GradientRgbCalculator.intermediates(green, orange, 8)
          => ["86D872", "95D46C", "A4CF67", "B3CA62", "C3C65C", "D2C157", "E1BC52", "F0B84C"]
      > exit
