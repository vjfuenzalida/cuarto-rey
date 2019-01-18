defmodule CuartoReyWeb.DeckView do
  use CuartoReyWeb, :view
  alias CuartoReyWeb.DeckView

  def render("index.json", %{decks: decks}) do
    %{data: render_many(decks, DeckView, "deck.json")}
  end

  def render("show.json", %{deck: deck}) do
    %{data: render_one(deck, DeckView, "deck.json")}
  end

  def render("deck.json", %{deck: deck}) do
    %{id: deck.id}
  end
end
