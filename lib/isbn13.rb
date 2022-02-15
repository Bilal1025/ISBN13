# frozen_string_literal: true
require 'singleton'

class ISBN13
  include Singleton

  class << self
    def calculate(number)
      digits = number.to_s.chars.map(&:to_i)
      raise StandardError, 'number should be 12 digit in length' if digits.length != 12

      v = digits.each_with_index.inject(0) do |n, (digit, index)|
        n += digit * (index.even? ? 1 : 3)
      end

      (number * 10) + (10 - (v % 10)) % 10
    end
  end
end
