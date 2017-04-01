defmodule Identicon.Generator do
  def hash(input) do
    bin = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{original: input, bin_list: bin}
  end

  def pick_color(%Identicon.Image{bin_list: bin} = image) do
    [ r, g, b | _tail ] = bin
    %Identicon.Image{image | color: { r, g, b }}
  end

  def build_grid(%Identicon.Image{bin_list: bin} = image) do
    grid = bin
    |> Enum.chunk(3)
    |> Enum.map(&mirror_row/1)
    |> List.flatten
    |> Enum.with_index
    |> Enum.filter(fn {val, _index} -> rem(val,2)==0 end)

    %Identicon.Image{image | grid: grid}
  end

  def build_pixel_map(%Identicon.Image{grid: grid} = image) do
    pixel_map = Enum.map(grid, fn {_code, index} ->
      x = rem(index, 5) * 50
      y = div(index, 5) * 50

      top_left = { x, y }
      bottom_right = { x + 50, y + 50 }

      { top_left, bottom_right }
    end)

    %Identicon.Image{image | pixel_map: pixel_map}
  end

  def draw(%Identicon.Image{pixel_map: pixel_map, color: color} = image) do
    img = :egd.create(250, 250)
    fill = :egd.color(color)
    Enum.each(pixel_map, fn {top_left, bottom_right} ->
      :egd.filledRectangle(img, top_left, bottom_right, fill)
    end)

    bin = :egd.render(img)

    %Identicon.Image{image | image_binary: bin}
  end

  def save(%Identicon.Image{image_binary: bin, original: filename} = image) do
    File.write("#{filename}.png", bin)
  end

  def mirror_row(row) do
    # [ 1 , 2, 3 ]
    [ first, second, _third ] = row
    # [ 1, 2, 3, 2, 1 ]
    row ++ [ second , first ]
  end
end
