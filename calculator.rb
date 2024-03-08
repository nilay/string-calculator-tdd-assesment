# frozen_string_literal: true

def add(numbers)
  numbers.split(',').map(&:to_i).sum
end
