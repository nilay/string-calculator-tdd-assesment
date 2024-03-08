# frozen_string_literal: true

require_relative '../calculator.rb'
RSpec.describe 'Calculator' do
  # ==== 1st set ====
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

  # ==== 2nd set =====
  it 'allows handle any amount of numbers' do
    # test with 1000 numbers
    expect(add([*1..1000].join(','))).to be_a_kind_of(Integer)
  end

  it 'also allows new line as separator' do
    expect(add("1\n2,3")).to eq(6)
  end

end
