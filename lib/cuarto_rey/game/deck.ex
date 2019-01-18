defmodule CuartoRey.Game.Deck do
  use Ecto.Schema
  import Ecto.Changeset


  schema "decks" do
    has_many :cards, CuartoRey.Game.Card
    timestamps()
  end

  @doc false
  def changeset(deck, attrs) do
    deck
    |> cast(attrs, [])
    |> validate_required([])
  end
end
