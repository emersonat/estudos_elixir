# exercicio 08: ListsAndRecursion

tax_rates = [NC: 0.0075,TX: 0.08]

orders = [
  [id: 123, ship_to: :NC, net_amount: 100.00],
  [id: 124, ship_to: :OK, net_amount: 35.50],
  [id: 125, ship_to: :TX, net_amount: 24.00],
  [id: 126, ship_to: :TX, net_amount: 44.80],
  [id: 127, ship_to: :NC, net_amount: 25.00],
  [id: 128, ship_to: :MA, net_amount: 10.00],
  [id: 129, ship_to: :CA, net_amount: 102.00],
  [id: 130, ship_to: :NC, net_amount: 50.00]
]

for order <- orders, tax <- tax_rates do

  net_amount = order[:net_amount]

  if order[:ship_to] == elem(tax,0) do
    total_amount = net_amount + (net_amount * elem(tax,1) )
    order ++ [total_amount: :erlang.float_to_binary(total_amount, [decimals: 3])]
  else
    order ++ [total_amount: :erlang.float_to_binary(net_amount, [decimals: 3])]
  end

end



