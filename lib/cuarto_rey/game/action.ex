defmodule CuartoRey.Game.Action do
  use Ecto.Schema
  import Ecto.Changeset


  schema "actions" do
    field :description, :string
    field :type, :string
    belongs_to :card, CuartoRey.Game.Card
    timestamps()
  end

  @doc false
  def changeset(action, attrs) do
    action
    |> cast(attrs, [:type, :description])
    |> validate_required([:type, :description])
  end
end
