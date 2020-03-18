
defmodule RPG do

  def attributes_calc(rpg_char = %{strengh: strengh,dexterity: dexterity,intelligence: intelligence}) do
    total = (strengh * 2) + (dexterity * 3) + (intelligence * 3)
    IO.puts(:stdio, "Pontos gastos: #{total}")
    #Enum.each(rpg_char,fn ({key, value}) -> IO.puts value end)
  end
end
