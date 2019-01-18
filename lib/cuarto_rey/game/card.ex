defmodule CuartoRey.Game.Card do
  use Ecto.Schema
  import Ecto.Changeset


  schema "cards" do
    field :name, :string
    field :number, :integer
    field :action_id, :id
    has_one :action, CuartoRey.Game.Action
    belongs_to :deck, CuartoRey.Game.Deck
    timestamps()
  end

  @doc false
  def changeset(card, attrs) do
    card
    |> cast(attrs, [:number, :name])
    |> validate_required([:number, :name])
  end
end
