require_relative 'multilinguist'
class MathGenius < Multilinguist

  def report_total(numbers)
    total = 0
    numbers.each do |num|
      total += num
    end
    total
  end
end

me = MathGenius.new
puts me.report_total([23,45,676,34,5778,4,23,5465])
