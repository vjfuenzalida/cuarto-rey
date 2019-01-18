defmodule CuartoReyWeb.ActionView do
  use CuartoReyWeb, :view
  alias CuartoReyWeb.ActionView

  def render("index.json", %{actions: actions}) do
    %{data: render_many(actions, ActionView, "action.json")}
  end

  def render("show.json", %{action: action}) do
    %{data: render_one(action, ActionView, "action.json")}
  end

  def render("action.json", %{action: action}) do
    %{id: action.id,
      type: action.type,
      description: action.description}
  end
end
