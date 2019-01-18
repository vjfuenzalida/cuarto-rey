defmodule CuartoReyWeb.DeckController do
  use CuartoReyWeb, :controller

  alias CuartoRey.Game
  alias CuartoRey.Game.Deck

  action_fallback CuartoReyWeb.FallbackController

  def index(conn, _params) do
    decks = Game.list_decks()
    render(conn, "index.json", decks: decks)
  end

  def create(conn, %{"deck" => deck_params}) do
    with {:ok, %Deck{} = deck} <- Game.create_deck(deck_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.deck_path(conn, :show, deck))
      |> render("show.json", deck: deck)
    end
  end

  def show(conn, %{"id" => id}) do
    deck = Game.get_deck!(id)
    render(conn, "show.json", deck: deck)
  end

  def update(conn, %{"id" => id, "deck" => deck_params}) do
    deck = Game.get_deck!(id)

    with {:ok, %Deck{} = deck} <- Game.update_deck(deck, deck_params) do
      render(conn, "show.json", deck: deck)
    end
  end

  def delete(conn, %{"id" => id}) do
    deck = Game.get_deck!(id)

    with {:ok, %Deck{}} <- Game.delete_deck(deck) do
      send_resp(conn, :no_content, "")
    end
  end
end
