defmodule Euler do
  
  defp _lperms([]), do: [[]]
  defp _lperms([head|tail]) do
    for new_head <- [head|tail], 
    	# get all perms of list - past perm
      # i.e [[0,1,2], [1,0,2]] -- [[0,1,2]] 
    	new_tail <- _lperms([head|tail] -- [new_head]), 
    do: [new_head | new_tail]
  end

  def run(range) do 
  	_lperms(Enum.to_list(range))
  end
end

IO.inspect Euler.run(0..9) 
			|> Enum.at(1_000_000 - 1 ) # zero correction
