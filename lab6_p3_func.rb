# frozen_string_literal: true

# class for calculating line length
class Int
  def self.intprg_block(zn_a, zn_b)
    raz_h = (zn_b - zn_a).to_f / 10_000
    i_s = 0
    10_001.times do |item|
      i_s += yield(zn_a + item * raz_h)
    end
    i_s * raz_h
  end

  def self.intprg_lambda(zn_a, zn_b, func)
    raz_h = (zn_b - zn_a).to_f / 10_000
    i_s = 0
    10_001.times do |item|
      i_s += func.call(zn_a + item * raz_h)
    end
    i_s * raz_h
  end
end
