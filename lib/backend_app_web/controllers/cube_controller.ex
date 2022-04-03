defmodule BackendAppWeb.CubeController do
  use BackendAppWeb, :controller

  def get_all_colors(conn, _params) do
    # TODO:

  end

  def change_color(conn, %{ "color" => color }) do
    # TODO:
    send_resp(conn, 200, color)

  end

  def change_color(conn, _params) do
    send_resp(conn, 400, "")
  end

  def get_color(conn, _params) do
    # TODO:
    send_resp(conn, 200, "fuck you")
  end
end
