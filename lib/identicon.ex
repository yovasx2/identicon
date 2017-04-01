defmodule Identicon do
  @moduledoc """
  Documentation for Identicon.
  """

  @doc """
  Generate identicon.

  ## Examples

      iex> Identicon.generate

  """
  def generate(input) do
  input
    |> Identicon.Generator.hash
    |> Identicon.Generator.pick_color
    |> Identicon.Generator.build_grid
    |> Identicon.Generator.build_pixel_map
    |> Identicon.Generator.draw
    |> Identicon.Generator.save
  end
end
