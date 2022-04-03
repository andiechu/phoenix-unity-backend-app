defmodule BackendAppWeb.EventController do
  use BackendAppWeb, :controller

  def get_event(conn, _params) do
    # TODO: choose different event!
    send_resp(conn, 200, "fuck you")
  end


end
