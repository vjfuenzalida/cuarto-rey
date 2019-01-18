defmodule CuartoReyWeb.Router do
  use CuartoReyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CuartoReyWeb do
    pipe_through :api
    resources "/actions", ActionController, except: [:new, :edit]
    resources "/cards", CardController, except: [:new, :edit]
    resources "/decks", DeckController, except: [:new, :edit]
  end
end
