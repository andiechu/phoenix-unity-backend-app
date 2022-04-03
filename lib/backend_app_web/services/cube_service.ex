defmodule BackendAppWeb.CubeService do
  use BackendAppWeb, :service

  alias BackendApp.CubeColor

  def get_all_cube_colors() do
    Repo.all(CubeColor)
  end

end
