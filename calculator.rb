# frozen_string_literal: true

def add(numbers)
  numbers.split(/[\n,']/).map(&:to_i).sum
end
