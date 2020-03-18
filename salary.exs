  #import Income, only: [tax: 1]
  Code.require_file("salary.ex")

  salary = IO.gets "Type your salary: "

  #{int_salary, _} = Integer.parse(salary)
  case Integer.parse(salary) do
    :error -> IO.puts "Valor inválido #{salary}"


    {tuple_salary, _} ->
      int_salary = tuple_salary
      tax_result = Income.tax(int_salary)
      net_salary = int_salary - tax_result
      IO.inspect "#{tax_result} e #{:erlang.float_to_binary(net_salary, decimals: 2)}"
end
