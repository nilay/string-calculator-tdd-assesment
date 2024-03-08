# frozen_string_literal: true

require_relative 'invalid_number_error.rb'
def add(numbers)
  # figure out custom delimiter if its present in string
  delimiter = numbers.start_with?('//') ? numbers[2..(numbers.index("\n") - 1)] : nil

  # convert string into array removing delimiter prefix
  numbers_as_array = numbers.delete_prefix("//#{delimiter}\n").split(/[\n,#{delimiter}]/).map(&:to_i)

  raise InvalidNumberError.new('negative numbers not allowed') if numbers_as_array.select(&:negative?).count.positive?

  numbers_as_array.sum
end
