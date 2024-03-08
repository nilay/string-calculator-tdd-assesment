# frozen_string_literal: true

require_relative '../calculator.rb'
RSpec.describe 'Calculator' do
  it 'has method add' do
    expect('method').to eq(defined? add)
  end

  it 'returns 0 when empty string is passed' do
    expect(add('')).to eq(0)
  end

  it 'returns same number when single item is passed' do
    expect(add('1')).to eq(1)
  end

  it 'returns sum of qomma separated number' do
    expect(add('1,5')).to eq(6)
  end
end
