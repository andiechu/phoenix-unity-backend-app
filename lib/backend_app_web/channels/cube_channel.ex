defmodule BackendAppWeb.CubeChannel do
  use Phoenix.Channel

  alias BackendAppWeb.CubeService

  def join("cube:current_cube", _params, socket) do
    {:ok, socket}
  end

  def handle_in("select_color", %{ "cube_id" => cube_id }, socket) do
    IO.puts("you have chose cube: #{cube_id}")

    cube = cube_id
      |> String.to_integer()
      |> CubeService.get_cube_color_by_id()

    broadcast(socket, "new_color", %{ cube_id: cube_id, cube_color: cube.cube_color })

    {:noreply, socket}
  end


end
