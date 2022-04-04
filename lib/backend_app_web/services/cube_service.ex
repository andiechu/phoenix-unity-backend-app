defmodule BackendAppWeb.CubeService do
  use BackendAppWeb, :service

  alias BackendApp.CubeColor

  def get_all_cube_colors() do
    Repo.all(CubeColor)
  end

  def get_cube_color_by_id(cube_id) do
    # query = from cube in CubeColor, where: cube.cube_id == ^cube_id
    Repo.get(CubeColor, cube_id)
  end

end
