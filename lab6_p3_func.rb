# frozen_string_literal: true

# :reek:DuplicateMethodCall
# :reek:TooManyStatements

# class for calculating line length
class Int

  def self.intprg()
    zn_a=0
    zn_b=1
    raz_h = (zn_b - zn_a).to_f / 10000
    i_s = 0
    (0..10000).each do |item|
      i_s += yield(zn_a + item * raz_h)
    end
    i_s * raz_h
  end
end
