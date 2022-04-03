defmodule BackendApp.Repo.Migrations.CreateCubeColor do
  use Ecto.Migration

  def change do
    create table(:cube_color, primary_key: false) do
      add :cube_id, :serial, primary_key: true
      add :cube_color, :string

      timestamps()
    end
  end
end
