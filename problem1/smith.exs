defmodule Euler do
	defp _multiple_of_3_or_5(num) do
		cond do
			rem(num, 3) == 0 -> true
			rem(num, 5) == 0 -> true
			true ->
				false
		end
	end
	def run(num) do
		Enum.to_list(1..(num-1))
			|> Enum.filter( &(_multiple_of_3_or_5(&1)) )
			|> Enum.sum
	end
end

# IO.puts Euler.run(10)
IO.puts Euler.run(1000)
# IO.puts Euler.run(10_000_000)