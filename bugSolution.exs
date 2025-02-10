```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using try-catch
Enum.each(list, fn x ->
  try do
    if x == 3 do
      throw(:stop) # throw will not stop the Enum.each here
    end
    IO.puts(x)
  catch
    :stop -> IO.puts("Stopped at 3")
  end
end)

# Solution 2: Using a for loop or other iterative method
for x <- list do
  if x != 3 do
    IO.puts(x)
  else
    IO.puts("Skipping 3")
  end
end
```