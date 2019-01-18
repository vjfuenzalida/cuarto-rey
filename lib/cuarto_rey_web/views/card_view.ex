defmodule CuartoReyWeb.CardView do
  use CuartoReyWeb, :view
  alias CuartoReyWeb.CardView

  def render("index.json", %{cards: cards}) do
    %{data: render_many(cards, CardView, "card.json")}
  end

  def render("show.json", %{card: card}) do
    %{data: render_one(card, CardView, "card.json")}
  end

  def render("card.json", %{card: card}) do
    %{id: card.id,
      number: card.number,
      name: card.name}
  end
end
