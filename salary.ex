defmodule Income do
  def tax(salary) when salary <= 2000 do 0 end
  def tax(salary) when salary <= 3000 do salary * 0.05 end
  def tax(salary) when salary <= 6000 do salary * 0.1 end
  def tax(salary) do salary * 0.15 end
end
