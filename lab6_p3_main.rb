# frozen_string_literal: true

require_relative 'lab6_p3_func'
puts 'Введите 1 для функции exp(x)/(x+1) или 2 для x(x-1)'
num = gets.to_i
num = gets.to_i while num != 1 && num != 2
if num == 1
  puts "Значение определенного интеграла : #{Int.intprg_block(0, 1) { |x| Math.exp(x) / (x + 1) }}"
  l_func = ->(x) { Math.exp(x) / (x + 1) }
else
  puts "Значение определенного интеграла : #{Int.intprg_block(0, 2) { |x| x * (x - 1) }}"
  l_func = ->(x) { x * (x - 1) }
end
puts "Значение определенного интеграла : #{Int.intprg_lambda(0, 1, l_func)}"
