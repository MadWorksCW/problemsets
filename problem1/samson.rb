class Week1
  def initialize(max)
    @max = max
  end

  def go
    total = sum(@max)
    puts "Sum of fizzbuzz < #{@max} is #{total}"
  end

  private
  def sum(max)
    total = 0
    0.upto(max-1).each do |n|
      total += n if n.fizzbuzz?
    end
    total
  end
end

class Fixnum
  def fizzbuzz?
    self % 3 == 0 || self % 5 == 0
  end
end

Week1.new(10).go
Week1.new(1000).go

# Output
# $ ruby problem1.rb
# Sum of fizzbuzz < 10 is 23
# Sum of fizzbuzz < 1000 is 233168