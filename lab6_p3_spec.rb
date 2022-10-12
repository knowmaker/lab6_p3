# frozen_string_literal: true

require_relative 'lab6_p3_func'
require 'rspec'

RSpec.describe Int do
  context 'func_block' do
    it 'should do correct result' do
      expect(Int.intprg_block(0, 1) { |x| Math.exp(x) / (x + 1) }).to be_within(0.01).of(1.12538608308327)
    end
    it 'should do correct result' do
      expect(Int.intprg_block(0, 2) { |x| x * (x - 1) }).to be_within(0.01).of(0.666666666666667)
    end
  end
  context 'func_lambda' do
    it 'should do correct result' do
      expect(Int.intprg_lambda(0, 1, ->(x) { Math.exp(x) / (x + 1) })).to be_within(0.01).of(1.12538608308327)
    end
    it 'should do correct result' do
      expect(Int.intprg_lambda(0, 2, ->(x) { x * (x - 1) })).to be_within(0.01).of(0.666666666666667)
    end
  end
end
