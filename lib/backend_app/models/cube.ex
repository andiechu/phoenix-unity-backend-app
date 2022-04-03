defmodule BackendApp.CubeColor do
  use Ecto.Schema
  import Ecto.Changeset

  @derive {Jason.Encoder, except: [:__meta__]}

  @primary_key {:cube_id, :id, autogenerate: true}
  schema "cube_color" do
    field :cube_color, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(cube, attrs) do
    cube
    |> cast(attrs, [:cube_color])
    |> validate_required([:cube_color])
  end
end
