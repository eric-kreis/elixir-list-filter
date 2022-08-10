defmodule ListFilter do
  @moduledoc """
  Documentation for `ListFilter`.
  """

  @doc """
  Count of odd numbers in a list of strings.

  ## Examples

      iex> ListFilter.call(["banana", "apple", "3", "10", "5", "7"])
      3

  """
  def call([]), do: 0

  def call(list) do
    string_numbers = Enum.filter(list, fn e -> Integer.parse(e) != :error end)
    numbers = Enum.map(string_numbers, fn e -> String.to_integer(e) end)

    Enum.reduce(numbers, 0, fn
      e, acc ->
        rest = rem(e, 2)
        case rest do
          0 -> acc
          _ -> acc + 1
        end
    end)
  end
end
