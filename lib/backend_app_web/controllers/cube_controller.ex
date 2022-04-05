defmodule BackendAppWeb.CubeController do
  use BackendAppWeb, :controller

  alias BackendAppWeb.CubeService

  def get_all_colors(conn, _params) do
    { state, result } =
      CubeService.get_all_cube_colors
      |> Jason.encode()

    case state do
      :ok -> send_resp(conn, 200, result)
      :error -> send_resp(conn, 500, "Data retrive error!")
    end
  end

  def change_color(conn, %{ "color" => color }) do
    # TODO:
    send_resp(conn, 200, color)

  end

  def change_color(conn, _params) do
    # TODO:
    send_resp(conn, 400, "")
  end

  def get_color(conn, _params) do
    # TODO:
    send_resp(conn, 200, "hello, get_color")
  end
end
