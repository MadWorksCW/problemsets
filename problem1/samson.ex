#!/usr/bin/env elixir
defmodule Week1 do
  def sum_fizzbuzz(0, acc), do: acc

  def sum_fizzbuzz(current, acc) when rem(current, 3) == 0 or rem(current, 5) == 0 do
    sum_fizzbuzz(current-1, acc + current)
  end

  def sum_fizzbuzz(current, acc) do
    sum_fizzbuzz(current-1, acc)
  end

  def go(max) do
    total = Week1.sum_fizzbuzz(max - 1, 0)
    IO.puts "Sum of fizzbuzz < #{max} is #{total}"
    total
  end

end


#Week1.go(10)
#Week1.go(1000)

Week1.go(10_000_000)
# Output
# $ elixir problem1.ex
# Sum of fizzbuzz < 10 is 23
# Sum of fizzbuzz < 1000 is 233168