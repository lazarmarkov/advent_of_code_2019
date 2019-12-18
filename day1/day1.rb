class ModuleFuelCalculator
  attr_reader :sum
  def initialize
    @sum = 0
  end

  def calc_and_sum_fuel(module_mass)
    @sum += (module_mass / 3).floor - 2    
  end
end

calc = ModuleFuelCalculator.new
$stdin.each do |line|
  calc.calc_and_sum_fuel(line.to_i)
end

puts calc.sum
