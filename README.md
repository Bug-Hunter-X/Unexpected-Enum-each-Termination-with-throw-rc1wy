# Elixir Enum.each and throw: Unexpected Termination

This example demonstrates an uncommon error in Elixir related to the use of `throw` inside an `Enum.each` loop.  Unlike many other languages where an exception might be caught, `throw` in this context will immediately terminate the `Enum.each` function, potentially leading to incomplete processing of the list.

The `bug.exs` file shows the problematic code, while `bugSolution.exs` provides the correct approach using `try-catch` or a different loop construct to prevent the premature termination.

This behavior is not immediately obvious and can be a source of confusion for developers familiar with exception handling in other languages.  The README aims to highlight this subtlety for better understanding and prevention of similar errors.