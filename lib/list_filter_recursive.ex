defmodule ListFilterRecursive do
  @moduledoc """
  Documentation for `ListFilterRecursive`.
  """

  @doc """
  Count of odd numbers in a list of strings.

  ## Examples

      iex> ListFilterRecursive.call(["banana", "apple", "3", "10", "5", "7"])
      3

  """
  def call(list), do: get_odd_count(list)

  defp get_odd_count(list, acc \\ 0)

  defp get_odd_count([], acc), do: acc

  defp get_odd_count([head | tail], acc) do
    try do
      String.to_integer(head)
    rescue
      ArgumentError -> get_odd_count(tail, acc)
    else
      num ->
        is_odd = rem(num, 2)
        case is_odd do
          0 -> get_odd_count(tail, acc)
          _ -> get_odd_count(tail, acc + 1)
        end
    end
  end
end
