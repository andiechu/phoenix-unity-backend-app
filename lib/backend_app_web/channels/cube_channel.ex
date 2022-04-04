defmodule BackendAppWeb.CubeChannel do
  use Phoenix.Channel

  def join("cube:current_cube", _params, socket) do
    {:ok, socket}
  end

  def handle_in("select_color", %{ "cube_id" => cube_id }, socket) do
    IO.puts("you have chose cube: #{cube_id}")

    # TODO: broadcast another event to Unity frontend app

    {:noreply, socket}
  end


end
