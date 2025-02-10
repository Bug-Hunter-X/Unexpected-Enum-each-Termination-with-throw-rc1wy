```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # Unexpected behavior: This will terminate the Enum.each
    throw(:stop)
  end
  IO.puts(x)
end)
```